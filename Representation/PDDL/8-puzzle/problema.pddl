(define (problem EightPuzzleProblem)
  (:domain EightPuzzle)
  (:objects
    uno dos tres cuatro cinco seis siete ocho nueve  ; Las fichas numeradas del 1 al 8 y el espacio en blanco
    pos1 pos2 pos3 pos4 pos5 pos6 pos7 pos8 pos9  ; Posiciones en el tablero
  )

   (:init
   (blank pos2)
   (at dos pos1) (at nueve pos2) (at tres pos3)
   (at uno pos4) (at ocho pos5) (at cuatro pos6)
   (at siete pos7) (at seis pos8) (at cinco pos9)
  (adjacent pos1 pos2) (adjacent pos1 pos4)
  (adjacent pos2 pos5) (adjacent pos2 pos1) (adjacent pos2 pos3) 
  (adjacent pos3 pos2) (adjacent pos3 pos6)
  (adjacent pos4 pos5) (adjacent pos4 pos1) (adjacent pos4 pos7)
  (adjacent pos5 pos2) (adjacent pos5 pos4) (adjacent pos5 pos6) (adjacent pos5 pos8)
  (adjacent pos6 pos5) (adjacent pos6 pos3) (adjacent pos6 pos9)
  (adjacent pos7 pos4) (adjacent pos7 pos8)
  (adjacent pos8 pos5) (adjacent pos8 pos7) (adjacent pos8 pos9)
  (adjacent pos9 pos6) (adjacent pos9 pos8)
)

 (:goal
  (and
    (blank pos5)
    (at uno pos1) (at dos pos2) (at tres pos3)
    (at ocho pos4) (at nueve pos5) (at cuatro pos6)
    (at siete pos7) (at seis pos8) (at cinco pos9)
  )
)

)
