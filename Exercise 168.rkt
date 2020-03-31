;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 168|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (function val)
  (cond
    [(empty? val) '()]
    [else
     (cons (make-posn (posn-x (first val))
                      (+ 1 (posn-y (first val))))
           (function (rest val)))]))

(check-expect (function (cons
                          (make-posn 42.4 20)
                               (cons (make-posn 72 34) '())))
              (cons (make-posn 42.4 21)
                    (cons (make-posn 72 35) '())))
