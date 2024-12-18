(define 
    (problem instance1)
    (:domain hvac)
    (:objects r1  -room k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14 k15 k16 k17 k18 k19 k20 k21 k22 k23 k24 k25 k26 k27 k28 k29 k30 k31 k32 k33 k34 k35 k36 k37 k38 k39 k40 k41 k42 k43 k44 k45 k46 k47 k48 k49 k50 k51 k52 k53 k54 k55 k56 k57 k58 k59 k60 k61 k62 k63 k64 k65 k66 k67 k68 k69 k70 k71 k72 -request)
    (:init
        (= (time_requested r1 k1) 10)
        (= (temp_requested r1 k1) 20)
        
        (= (time_requested r1 k2) 20)
        (= (temp_requested r1 k2) 14)

        (= (time_requested r1 k3) 30)
        (= (temp_requested r1 k3) 20)
        
        (= (time_requested r1 k4) 40)
        (= (temp_requested r1 k4) 14)
        
        (= (time_requested r1 k5) 50)
        (= (temp_requested r1 k5) 20)

        (= (time_requested r1 k6) 60)
        (= (temp_requested r1 k6) 14)

        (= (time_requested r1 k7) 70)
        (= (temp_requested r1 k7) 20)

        (= (time_requested r1 k8) 80)
        (= (temp_requested r1 k8) 14)

        (= (time_requested r1 k9) 90)
        (= (temp_requested r1 k9) 20)

        (= (time_requested r1 k10) 100)
        (= (temp_requested r1 k10) 14)

        (= (time_requested r1 k11) 110)
        (= (temp_requested r1 k11) 20)

        (= (time_requested r1 k12) 120)
        (= (temp_requested r1 k12) 14)

        (= (time_requested r1 k13) 130)
        (= (temp_requested r1 k13) 20)

        (= (time_requested r1 k14) 140)
        (= (temp_requested r1 k14) 14)

        (= (time_requested r1 k15) 150)
        (= (temp_requested r1 k15) 20)

        (= (time_requested r1 k16) 160)
        (= (temp_requested r1 k16) 14)

        (= (temp r1) 15)
        (= (air_flow r1) 0)
        (= (temp_sa r1) 10)



        (= (time) 0)
		(= (time_requested r1 k17) 170)
		(= (temp_requested r1 k17) 14)
		(= (time_requested r1 k18) 180)
		(= (temp_requested r1 k18) 20)
		(= (time_requested r1 k19) 190)
		(= (temp_requested r1 k19) 14)
		(= (time_requested r1 k20) 200)
		(= (temp_requested r1 k20) 20)
		(= (time_requested r1 k21) 210)
		(= (temp_requested r1 k21) 14)
		(= (time_requested r1 k22) 220)
		(= (temp_requested r1 k22) 20)
		(= (time_requested r1 k23) 230)
		(= (temp_requested r1 k23) 14)
		(= (time_requested r1 k24) 240)
		(= (temp_requested r1 k24) 20)
		(= (time_requested r1 k25) 250)
		(= (temp_requested r1 k25) 14)
		(= (time_requested r1 k26) 260)
		(= (temp_requested r1 k26) 20)
		(= (time_requested r1 k27) 270)
		(= (temp_requested r1 k27) 14)
		(= (time_requested r1 k28) 280)
		(= (temp_requested r1 k28) 20)
		(= (time_requested r1 k29) 290)
		(= (temp_requested r1 k29) 14)
		(= (time_requested r1 k30) 300)
		(= (temp_requested r1 k30) 20)
		(= (time_requested r1 k31) 310)
		(= (temp_requested r1 k31) 14)
		(= (time_requested r1 k32) 320)
		(= (temp_requested r1 k32) 20)
		(= (time_requested r1 k33) 330)
		(= (temp_requested r1 k33) 14)
		(= (time_requested r1 k34) 340)
		(= (temp_requested r1 k34) 20)
		(= (time_requested r1 k35) 350)
		(= (temp_requested r1 k35) 14)
		(= (time_requested r1 k36) 360)
		(= (temp_requested r1 k36) 20)
		(= (time_requested r1 k37) 370)
		(= (temp_requested r1 k37) 14)
		(= (time_requested r1 k38) 380)
		(= (temp_requested r1 k38) 20)
		(= (time_requested r1 k39) 390)
		(= (temp_requested r1 k39) 14)
		(= (time_requested r1 k40) 400)
		(= (temp_requested r1 k40) 20)
		(= (time_requested r1 k41) 410)
		(= (temp_requested r1 k41) 14)
		(= (time_requested r1 k42) 420)
		(= (temp_requested r1 k42) 20)
		(= (time_requested r1 k43) 430)
		(= (temp_requested r1 k43) 14)
		(= (time_requested r1 k44) 440)
		(= (temp_requested r1 k44) 20)
		(= (time_requested r1 k45) 450)
		(= (temp_requested r1 k45) 14)
		(= (time_requested r1 k46) 460)
		(= (temp_requested r1 k46) 20)
		(= (time_requested r1 k47) 470)
		(= (temp_requested r1 k47) 14)
		(= (time_requested r1 k48) 480)
		(= (temp_requested r1 k48) 20)
		(= (time_requested r1 k49) 490)
		(= (temp_requested r1 k49) 14)
		(= (time_requested r1 k50) 500)
		(= (temp_requested r1 k50) 20)
		(= (time_requested r1 k51) 510)
		(= (temp_requested r1 k51) 14)
		(= (time_requested r1 k52) 520)
		(= (temp_requested r1 k52) 20)
		(= (time_requested r1 k53) 530)
		(= (temp_requested r1 k53) 14)
		(= (time_requested r1 k54) 540)
		(= (temp_requested r1 k54) 20)
		(= (time_requested r1 k55) 550)
		(= (temp_requested r1 k55) 14)
		(= (time_requested r1 k56) 560)
		(= (temp_requested r1 k56) 20)
		(= (time_requested r1 k57) 570)
		(= (temp_requested r1 k57) 14)
		(= (time_requested r1 k58) 580)
		(= (temp_requested r1 k58) 20)
		(= (time_requested r1 k59) 590)
		(= (temp_requested r1 k59) 14)
		(= (time_requested r1 k60) 600)
		(= (temp_requested r1 k60) 20)
		(= (time_requested r1 k61) 610)
		(= (temp_requested r1 k61) 14)
		(= (time_requested r1 k62) 620)
		(= (temp_requested r1 k62) 20)
		(= (time_requested r1 k63) 630)
		(= (temp_requested r1 k63) 14)
		(= (time_requested r1 k64) 640)
		(= (temp_requested r1 k64) 20)
		(= (time_requested r1 k65) 650)
		(= (temp_requested r1 k65) 14)
		(= (time_requested r1 k66) 660)
		(= (temp_requested r1 k66) 20)
		(= (time_requested r1 k67) 670)
		(= (temp_requested r1 k67) 14)
		(= (time_requested r1 k68) 680)
		(= (temp_requested r1 k68) 20)
		(= (time_requested r1 k69) 690)
		(= (temp_requested r1 k69) 14)
		(= (time_requested r1 k70) 700)
		(= (temp_requested r1 k70) 20)
		(= (time_requested r1 k71) 710)
		(= (temp_requested r1 k71) 14)
		(= (time_requested r1 k72) 720)
		(= (temp_requested r1 k72) 20)

        (= (comfort) 2)


    )
    ;; the goal encodes the horizon of control. 
    (:goal 
        (and  (satisfied k1)
	      (satisfied k2)
              (satisfied k3)
              (satisfied k4)
              (satisfied k5)
              (satisfied k6)
              (satisfied k7)
              (satisfied k8)
              (satisfied k9)
              (satisfied k10)
              (satisfied k11)
              (satisfied k12)
              (satisfied k13)
              (satisfied k14)
              (satisfied k15)
              (satisfied k16)
              (satisfied k17)
              (satisfied k18)
              (satisfied k19)
              (satisfied k20)
              (satisfied k21)
              (satisfied k22)
              (satisfied k23)
              (satisfied k24)
              (satisfied k25)
              (satisfied k26)
              (satisfied k27)
              (satisfied k28)
              (satisfied k29)
              (satisfied k30)
              (satisfied k31)
              (satisfied k32)
              (satisfied k33)
              (satisfied k34)
              (satisfied k35)
              (satisfied k36)
              (satisfied k37)
              (satisfied k38)
              (satisfied k39)
              (satisfied k40)
              (satisfied k41)
              (satisfied k42)
              (satisfied k43)
              (satisfied k44)
              (satisfied k45)
              (satisfied k46)
              (satisfied k47)
              (satisfied k48)
              (satisfied k49)
              (satisfied k50)
              (satisfied k51)
              (satisfied k52)
              (satisfied k53)
              (satisfied k54)
              (satisfied k55)
              (satisfied k56)
              (satisfied k57)
              (satisfied k58)
              (satisfied k59)
              (satisfied k60)
              (satisfied k61)
              (satisfied k62)
              (satisfied k63)
              (satisfied k64)
              (satisfied k65)
              (satisfied k66)
              (satisfied k67)
              (satisfied k68)
              (satisfied k69)
              (satisfied k70)
              (satisfied k71)
              (satisfied k72)

       )
    )
)
