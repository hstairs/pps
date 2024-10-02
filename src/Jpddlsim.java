/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.hstairs.ppmajal.domain.PDDLDomain;
import com.hstairs.ppmajal.PDDLProblem.PDDLProblem;
import com.hstairs.ppmajal.problem.State;
import com.hstairs.ppmajal.transition.TransitionGround;
import org.apache.commons.cli.*;
import org.apache.commons.lang3.tuple.Pair;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.math.BigDecimal;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author enrico
 */
public class Jpddlsim {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        final Options options = new Options();
        options.addRequiredOption("d","domain", true, "PDDL+ Domain file");
        options.addRequiredOption("p","problem", true, "PDDL+ Problem file");
        options.addRequiredOption("sp","solution-plan", true, "PDDL+ Plan file");
        options.addOption("pt","print-trace", false, "Print Trace");
        options.addOption("delta","delta-simulation", true, "Set custom discretisation delta (default = 1.0)");
        
        final CommandLineParser parser = new DefaultParser();
        try {
            final CommandLine cmd = parser.parse(options, args);
            final String d = cmd.getOptionValue("d");
            final String p = cmd.getOptionValue("p");
            final String plan = cmd.getOptionValue("sp");
            String delta = cmd.getOptionValue("delta");
            
            if (delta == null){
                delta = "1.0";
            }
            boolean pt = cmd.hasOption("pt");
            final Pair<PDDLDomain, PDDLProblem> res = parseDomainProblem(d, p, delta, new PrintStream(new OutputStream() {public void write(int b) {}}));
            final PDDLProblem problem = res.getValue();
            final List<Pair<BigDecimal, TransitionGround>> timedPlan = getPlan(problem,plan,new BigDecimal(delta));
            long start = System.currentTimeMillis();
            List<State> trace = problem.getTrace(timedPlan, new BigDecimal(delta), new BigDecimal(delta));
            int i = 0;
            if (pt) {
                for (var v: trace){
                    System.out.println(v+"\n");
                }
            }
            System.out.println("Simulation Time:"+(System.currentTimeMillis()-start)/1000.0);
            System.out.println("\n =============================================== \n");
            System.out.println("Goal Reached: "+trace.get(trace.size()-1).satisfy(problem.getGoals()));
        } catch (ParseException ex) {
            HelpFormatter formatter = new HelpFormatter();
            formatter.printHelp("PPS", options);
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }

    }

    public static Pair<PDDLDomain, PDDLProblem> parseDomainProblem(String domainFile, String problemFile, String delta, PrintStream out) {
        try {
            final PDDLDomain localDomain = new PDDLDomain(domainFile);
            out.println("Domain parsed");
            final PDDLProblem localProblem = new PDDLProblem(problemFile, localDomain.getConstants(),
                    localDomain.getTypes(), localDomain, out, "naive", false, false, new BigDecimal(delta), new BigDecimal(delta));
            if (!localDomain.getProcessesSchema().isEmpty()) {
                localProblem.setDeltaTimeVariable(delta);
            }
            out.println("Problem parsed");
            out.println("Grounding..");

            if (!localProblem.prepareForSearch(true, false)) {
                return null;
            }

            return Pair.of(localDomain, localProblem);
        } catch (Exception ex) {
            Logger.getLogger(Jpddlsim.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    private static List<Pair<BigDecimal,TransitionGround>> getPlan(PDDLProblem problem, String plan, BigDecimal delta) {
        Path path = Paths.get(plan);
        final ArrayList<Pair<BigDecimal,TransitionGround>> pddlPlan = new ArrayList();
        BigDecimal previous = new BigDecimal(0);
        try {
            final List<String> readAllLines = Files.readAllLines(path,StandardCharsets.UTF_8);
            for (var v: readAllLines){
                String actionName = v.split(":")[1];
                actionName = actionName.trim();
                final BigDecimal time = new BigDecimal(v.split(":")[0]);
                TransitionGround pddlAction = null;
                if (!actionName.equals("@PlanEND")) {
                    pddlAction = problem.getActionsByName(actionName);
                }else{
                    pddlAction = TransitionGround.createEmptyAction();
                }
                if (pddlAction == null){
                    throw new RuntimeException("Action "+actionName+" is either not present in the domain or not applicable at time "+time);
                }
                if (!time.equals(previous)){
                    BigDecimal divide = time.subtract(previous).divide(delta);
                    for (int i=0 ; i< divide.intValue();i++)
                        pddlPlan.add(Pair.of(new BigDecimal(previous.intValue()+i),TransitionGround.waitingAction()));
                    previous = time;
                }
                pddlPlan.add(Pair.of(time,pddlAction));
            }
        } catch (IOException ex) {
            Logger.getLogger(Jpddlsim.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pddlPlan;
    }

}
