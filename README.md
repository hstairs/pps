This folder contains the source code and the executable of the time-discrete pddl+ simulator.
The simulator allows the user to simulate the execution of a time stamped plan against a discrete PDDL+ model. The discretisation factor is 1 in default, but can be changed with a proper specification through the command line.

# Reference Paper

PPS: An Efficient Java-based Simulator for Time-Discrete PDDL+, E. Scala, F. Percassi, M. Vallati, AAAI 2026 Demo Track (to appear).

# Compilation
In order to compile the tool just run build.sh. This will create a jar file named ppd.jar that can be executed as explained in the following section
We require JAVA 17 at least.

# Usage
java -jar dist/pps -d <domain.pddl> -p <problem.pddl> -sp <plan.pddl> {-pt} {-delta <float>}
where:
- <domain.pddl> is the name of the PDDL+ domain file
- <problem.pddl> is the name of the PDDL+ problem file
- <plan.pddl> is the name of the PDDL+ plan file

-pt allows to get a timed sequence of states on the standard output
-delta allows to set a delta time.

Plans are expressed as time-triggered plans, a map from time to action. Each element of the map is a row
in the file, time is indicating in decimal notation, i.e. x.y where x and y are the integer and the decimal part of the time point. The action has to be expressed as a ground action from the domain. For instance

5.4: (move a b)

indicates that at time 5.4 the agent must move from position a to b.

Note also that we require the end of the plan. This indicates when the agent meets the goal. We encode this with the special action @PlanEND. For instance, 

5.0: @PlanEND 

indicates that the plan ends at time 5.0.

# Dependencies

The software makes use of a number of libraries, all contained in the lib file. "jpddlplus" in particular contains crucial elements for the simulation task

- commons-cli-1.4
- antlr-3.4-complete
- jgrapht-core-1.3.0
- fastutil-8.3.1
- commons-lang3-3.8.1
- guava-25.1-jre
- hppc-0.8.0-SNAPSHOT
- jpddlplus.jar
