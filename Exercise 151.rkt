;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 151|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(check-expect (multiply 2 5) 10)

(define (multiply x y)
  (cond
    [(or (zero? x) (zero? y)) 0]
    [else
     (+ y (multiply (sub1 x) y))]))
