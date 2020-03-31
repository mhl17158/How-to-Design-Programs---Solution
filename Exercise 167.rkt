;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 167|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (sum val)
  (cond
    [(empty? val) 0]
    [else
     (+ (posn-x (first val))
        (sum (rest val)))]))

(check-expect (sum (cons
                    (make-posn 12.5 40)
                         (cons (make-posn 43 51.3) '())))(+ 12.5 43))
