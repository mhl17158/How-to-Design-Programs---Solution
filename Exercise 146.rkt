;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 146|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (how-many-n ne-l)
  (cond
    [(empty? (rest ne-l)) 1]
    [else
     (+ 1 (how-many-n (rest ne-l)))]))
(define (sum-n ne-l)
  (cond
    [(empty? (rest ne-l)) (first ne-l)]
    [else
     (+ (first ne-l) (sum-n (rest ne-l)))]))
(define (average-n2 ne-l)
  (/ (sum-n ne-l)
     (how-many-n ne-l)))

(check-expect
 (average-n2
  (cons 1
        (cons 2
              (cons 3 '()))))2)
