#lang racket
(require (planet dyoo/simply-scheme:2:2))

; # #Exercise 11.2
(define (um-count-add snt) (if (equal? (first snt) 'um) 1 0))
(define (count-ums snt) 
  (if (= (count snt) 1) 
    (um-count-add snt) 
    (+ (um-count-add snt) (count-ums (bf snt)))))

(count-ums '(today um we are going to um talk about the combining um method))
; # #Exercise 11.2
(define (unspell-letter letter)
  (cond ((member? letter 'abc) 2)
	((member? letter 'def) 3)
	((member? letter 'ghi) 4)
	((member? letter 'jkl) 5)
	((member? letter 'mno) 6)
	((member? letter 'prs) 7)
	((member? letter 'tuv) 8)
	((member? letter 'wxy) 9)
	(else 0)))

(define (phone-unspell wd) 
	(if (= (count wd) 1) 
		(unspell-letter (first wd))
		(word (unspell-letter (first wd)) (phone-unspell (bf wd)))))
(phone-unspell 'popcorn)

; # #Exercise 11.5
(define (initials snt)
	(if (= (count snt) 1)
		(first (first snt))
		(sentence (first (first snt)) 
			  (initials (bf snt)))))

(initials '(today um we are going to um talk about the combining um method))

; # #Exercise 12.5
(define (exagerate-word wd)
	(cond ((number? wd) (* 2 wd))
		  ((equal? 'good wd) 'great)
		  ((equal? 'bad wd) 'terrible)
		  (else wd)))

(define (exagerate snt)
	(if (= (count snt) 1)
		(exagerate-word (first snt))
		(sentence (exagerate-word (first snt)) (exagerate (bf snt)))))

(exagerate '(i ate 3 potstickers))
(exagerate '(the chow fun is good here))
