(define (problem zero_instance) (:domain test_dynamics)

(:init
   (= (x) 0)
   (= (y) 0)
   (= (z) 0)
    ;todo: put the initial state's facts and numeric values here
)

(:goal (and
   (>= (x) 10 )
    ;todo: put the goal condition here
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
