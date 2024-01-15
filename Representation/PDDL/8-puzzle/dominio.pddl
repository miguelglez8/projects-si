(define (domain EightPuzzle)
  (:requirements :strips)
  (:predicates
    (at ?x ?y)  ; La ficha con número ?x está en la posición ?y
    (blank ?x)  ; El espacio en blanco está en la posición ?x
    (adjacent ?x ?y)  ; Las posiciones ?x y ?y son adyacentes
  )

  (:action move
  :parameters (?from ?to ?f1 ?f2)
  :precondition (and
    (blank ?from)         ; ?from es la posición vacía
    (at ?f1 ?from)       ; La ficha ?f1 está en la posición ?from
    (at ?f2 ?to)       ; La ficha ?f2 está en la posición ?to
    (adjacent ?from ?to)  ; Las posiciones ?from y ?to son adyacentes
  )
  :effect (and
    (blank ?to)         ; ?to es la posición vacía
    (not (blank ?from)) ; ?from ya no es la posición vacía
    (at ?f1 ?to)   ; Coloca la ficha ?f1 en la posición ?to
    (at ?f2 ?from)   ; Coloca la ficha ?f2 en la posición ?from
    (not (at ?f1 ?from)) ; ?f1 ya no está en ?from
    (not (at ?f2 ?to)) ; ?f2 ya no está en ?to
  )
)

)
