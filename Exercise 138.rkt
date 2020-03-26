;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 138|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (sum-amount val)
  (cond
    [(empty? val) 0]
    [else
     (+ (first val)
        (sum-amount (rest val)))]))



(check-expect (sum-amount
               (cons 1 '())) 1)
(check-expect (sum-amount
               (cons 1
                     (cons 2 '()))) 3)
(check-expect (sum-amount
               (cons 1
                     (cons 2
                           (cons 3
                                 '()))))6)
