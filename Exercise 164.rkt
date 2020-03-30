;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 164|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define listUS
  (cons 112
        (cons 34.2
              (cons 127.5
                    (cons 93 '())))))
(define rate 1.14)

(define (function val)
  (cond
    [(empty? val) ...]
    [else
     (... (first val)
          (function (rest val)))]))

(define (convert-euro val)
  (cond
    [(empty? val) '()]
    [else
     (cons (* (first val) rate)
           (convert-euro (rest val)))]))

(define (convert-euro* val n)
  (cond
    [(empty? val) '()]
    [else
     (cons (* (first val) n)
           (convert-euro* (rest val) n))]))

(check-within
 (convert-euro listUS)
 (cons 127.68
       (cons 38.988
             (cons 145.35
                   (cons 106.02 '()))))0.01)

(check-within
 (convert-euro* listUS 0.78)
 (cons 87.36
       (cons 26.67
             (cons 99.45
                   (cons 72.54 '()))))0.01)