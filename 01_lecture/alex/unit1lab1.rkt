#lang racket
(require (planet dyoo/simply-scheme:2:2))

;; exercise 1
;; Modify the following procedure so it correctly handles cases like (plural 'boy)

(define (vowel? wd)
  (cond 
    ((equal? wd 'a) #t)
    ((equal? wd 'e) #t)
    ((equal? wd 'i) #t)
    ((equal? wd 'o) #t)
    ((equal? wd 'u) #t)
    (else #f)))

(define (plural wd)
  (if (and 
        (equal? (last wd) 'y)
        (not (vowel? (last (bl wd)))))
    (word (bl wd) 'ies)
    (word wd 's)))

;; tests
(vowel? 'a)
(vowel? 'e)
(vowel? 'i)
(vowel? 'o)
(vowel? 'u)
(vowel? 'x)
(vowel? 'y)
(vowel? 'z)
(plural 'boy)
(plural 'girl)
(plural 'duty)


;; exercise 2
; a > c and b > c; a b
; b > a and c > a; b c
; a > b and c > b; a c

(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (max-sum-squares a b c)
  (cond ((and (>= a c) (>= b c)) (sum-of-squares a b))
        ((and (>= b a) (>= c a)) (sum-of-squares b c))
        ((and (>= a b) (>= c b)) (sum-of-squares a c))))

(max-sum-squares 1 2 3) ; 13 
(max-sum-squares 2 2 2) ; 8


;; exercise three

(define (member? xs x)
  (if (equal? (member x xs) #f)
    #f
    #t))


(define (dupls-removed xs)
  (dupls-removed-iter xs '()))

(define (dupls-removed-iter xs xxs)
  (if (= 0 (length xs))
    xxs
    (if (member? xxs (first xs))
      (dupls-removed-iter (bf xs)
                          xxs)
      (dupls-removed-iter (bf xs)
                          (cons (first xs) xxs)))))

(dupls-removed '(a b c d e f a b c d e f g))
