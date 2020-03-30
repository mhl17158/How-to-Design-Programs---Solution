;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 162|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define rate 14)
(define hours 100)

(define (wage h)
  (* rate h))

(check-expect
 (wage*
  (cons 4
        (cons 2 '())))
 (cons 56
       (cons 28 '())))

(check-error (wage* (cons 4
                          (cons 101 '()))))
              
(define (wage* whrs)
  (cond
    [(empty? whrs) '()]
    [else (if (> (first whrs) hours)
              (error "hours error")
              (cons (wage (first whrs)) (wage* (rest whrs))))]))