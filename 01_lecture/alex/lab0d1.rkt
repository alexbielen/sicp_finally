#lang racket
(require (planet dyoo/simply-scheme:2:2))

;; lab 0.1 

;; exercise 1
; a

(/ 
  48 
  (* 2 
     (+ 3 9)))

(* 
  (/ 48 2)
  (+ 9 3))

;; b

(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

;;;; test
(sum-of-squares 3 4)

;; exercise 2

(define (second wd) (first (bf wd)))

;;;; test
(second 'fox)

;; exercise 3
; a 

(define (can-drive age)
  (cond ((>= age 16) '(good to go))
        (else '(not yet))))

(can-drive 25)
(can-drive 15)

; b
(define (divisible x y)
  (= 0 (remainder x y)))

(define (fizz-buzz x)
  (cond ((and 
           (divisible x 5)
           (divisible x 3)) 
         'fizzbuzz)
        ((divisible x 3) 'fizz)
        ((divisible x 5) 'buzz)))


;;;; test

(fizz-buzz 6)
(fizz-buzz 10)
(fizz-buzz 15)

;; homework 
;
; new-if doesn't work because if is considered a 'special form' in LISP
; LISP's if will not evaluate all of the arguments in an if expression 
; as an optimization technique. This is not possible with normal functions 
