#lang racket
(require (planet dyoo/simply-scheme:2:2))

;; SICP makes a distinction between a recursive process 
;; and a recursive procedure; a recursive process is one 
;; that relies on previously unevaluated expressions...
;; this is opposed to a iterative process which is one 
;; does not rely on previously unevaluated expression but 
;; instead stores the state of the computation in recursively 
;; passed arguments. 
;
;; a recursive procedure is one that syntactically calls
;; itself

;; recursive process and recursive procedure
(define (factorial n)
  (if (= n 1)
    1
    (* n (factorial (- n 1)))))

;; iterative process
(define (factorial2 product counter max-counter)
  (if (= counter max-counter)
    product
    (factorial2 (* counter product)
               (+ counter 1)
               max-counter)))


;; recursive process
(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1))
                 (fib (- n 2))))))

;; iterative process

(define (fib2 n)
  (fib-iter 1 0 n))

(define (fib-iter a b count)
  (if (= count 0)
    b
    (fib-iter (+ a b) a (- count 1))))

;; ways to make change 
(define (count-change amount)
  (cc amount 2))

(define (cc amount kinds-of-coins)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (= kinds-of-coins 0)) 0)
        (else (+ (cc amount 
                     (- kinds-of-coins 1))
                 (cc (- amount 
                        (first-denomination kinds-of-coins))
                     kinds-of-coins)))))

(define (first-denomination kinds-of-coins)
  (cond ((= kinds-of-coins 1) 25)
        ((= kinds-of-coins 2) 50)
        ))


(count-change 100)


;; need to trace out a simple case like only using $.50 and $.25







