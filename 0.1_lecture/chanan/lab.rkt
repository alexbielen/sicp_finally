#lang racket
(require (planet dyoo/simply-scheme:2:2))

; Exercise 1
; Part a
display (/ 48 (* 2 (+ 9 3)))
display(* (/ 48 2) (+ 9 3))

; Part b
(define (square x) (* x x))
(define (sum-of-squares x y) (+ (square x) (square y)))

display (sum-of-squares 2 5)

; Exercise 2
(define (second word) 
  (first (bf word))
)

display (second 'fox)

; Exercise 3
; Part a
(define (can-drive age)
  (if (< age 16) '(not yet) '(Good to go))
)

display (can-drive 15)
display (can-drive 17)

; Part b
(define (fizz? n) (= (remainder n 3) 0))
(define (buzz? n) (= (remainder n 5) 0))
(define (fizzbuzz? n) (and (fizz? n) (buzz? n)))
(define (fizzbuzz n) 
  (cond
    [(fizzbuzz? n) 'fizzbuzz]
    [(fizz? n) 'fizz]
    [(buzz? n) 'buzz]
    [else n]
    )
  )

display (fizzbuzz 3)
display (fizzbuzz 4)
display (fizzbuzz 5)
display (fizzbuzz 15)
