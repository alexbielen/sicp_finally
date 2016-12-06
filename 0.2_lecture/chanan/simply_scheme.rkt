#lang racket
(require (planet dyoo/simply-scheme:2:2))

; # #Exercise 3.1
(* (+ 3 4) 5)
(+ 3 (* 4 5))

; # #Exercise 4.5
(define (f->c f) (* (/ 5 9) (- f 32)))
(f->c 212)
(f->c 32)

(define (c->f c) ( + (* (/ 9 5) c) 32))
(c->f 100)
(c->f 0)

; # #Exercise 4.6
(define (square x) (* x x))
(define (fourth-mul n) (* n n n n))
(define (fourth-sq n) (square (square n)))

(fourth-mul 2)
(fourth-sq 2)


; # #Exercise 4.7
(define (absolute x) (sqrt (square x)))
(absolute -7)
(absolute 7)

; # #Exercise 4.8
(define (scientific x expo) (* x (expt 10 expo)))
(scientific 3 3)
(scientific 42 -5)

; # #Exercise 4.9
(define (discount price perc) (- price (* price (/ perc 100))))
(discount 10 5)
(discount 29.90 50)

; # #Exercise 5.14
(define (third wd) (first (butfirst (butfirst wd))))
(third 'hello)
(third '(hello sentences world))

; # #Exercise 5.15
(define (first-two wd) (word (first wd) (first (butfirst wd))))
(first-two 'hello)

; # #Exercise 5.16
(define (two-first wd1 wd2) (word (first wd1) (first wd2)))
(two-first 'brian 'epstein)

; # #Exercise 5.19
(define (insert-and items) (sentence (butlast items) 'and (last items)))
(insert-and '(brian john james sally))

; # #Exercise 6.5
(define (pm? time) (equal? (last time) 'pm))
(define (hours time) (first time))
(define (european-time time) (if (pm? time) (+ (hours time) 12) (hours time)))
(european-time '(8 am))
(european-time '(4 pm))
(european-time '(12 pm))


; # #Exercise 6.7
(define (type-of arg) 
    (cond ((boolean? arg) 'BOOLEAN)
          ((number?  arg) 'NUMBER)
          ((word?  arg) 'WORD)
          ((sentence?  arg) 'SENTENCE))
)

(type-of '(getting better))
(type-of '4)

; # #Exercise 6.8
(define (vowel? letter) (member? letter 'aeiou))
(define (indef-article wd) (if ( vowel? (first wd)) (sentence 'AN wd) (sentence 'A wd)))
(indef-article 'hat)
