;Header and description

(define (domain test_dynamics)


(:functions ;todo: define numeric functions here
   (x) (y) (z)
)
(:process z_dyn
:parameters ()
    :effect (and
         (increase (z) (* #t 1.0))
        ; continuous effect(s)
    )
)

(:action set_y
    :parameters ()
    :precondition (and (= (z) 3))
    :effect (and (assign (y) 5) )
)

(:process x_dyn
   :parameters ()
    :effect (and
         (increase (x) (* #t y))
        ; continuous effect(s)
    )
)

;define actions here

)