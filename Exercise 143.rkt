;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 143|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (sum val)
  (cond
    [(empty? val) 0]
    [else (+ (first val) (sum (rest val)))]))
(define (totalvalues val)
  (cond
    [(empty? val) 0]
    [else (+ 1 (totalvalues (rest val)))]))
(define (average val)
  (/ (sum val) (totalvalues val)))
(define (checked-average val)
  (cond
    [(empty? val)
     (error "Empty List")]
    [else (average val)]))



(check-error
 (checked-average
  (cons 1
        (cons 3 '()))2))