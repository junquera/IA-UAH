#lang racket
(define (factorial x) (if (> x 1) (* x (factorial (- x 1))) 1))
(define (sumatorio x y) (if (= x y) x (+ x (sumatorio (+ x 1) y))))
(define (raizaux x y) (if (> (expt (+ y 1) 2) x) y (raizaux x (+ y 1))))
(define (raiz x) (raizaux x 0))
(define (for x y) (if (> x 0) (for (- x 1) y) null))