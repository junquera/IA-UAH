#lang racket
; Función recursiva que encuentra el número de nodos encaminados en la búsqueda en anchura sobre un problema con factor de ramificación R y profundidad P
(define (nodos R P) (if (not (and (integer? R) (integer? P)))
                        "Error, datos incorrectos"
                        (if (< P 1)
                            0
                            (if (= P 1)
                                1
                                (+ (* R (- (nodos R (- P 1)) (nodos R (- P 2)))) (nodos R (- P 1)))
                                )
                            )
                        )
  )

; Siguiente -> Iterativo