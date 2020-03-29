;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 153|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

(define rows 10)
(define cols 10)
(define size 10)
(define img (square size "outline" "blue"))
(define dot (circle 3 "solid" "green"))

(check-expect (col 2 img) (above img img))

(define (col n img)
  (cond
    [(zero? n) empty-image]
    [else
     (above img
            (col (sub1 n) img))]))

(check-expect (row 2 img) (beside img img))

(define (row n img)
  (cond
    [(zero? n) empty-image]
    [else
     (beside img
             (row (sub1 n) img))]))

(define back
  (empty-scene (* cols size) (* rows size)))

(define matx (col rows (row cols img)))


(check-expect (add-dots
               (cons (make-posn 5 10) '()))
              (place-image dot 5 10 matx))

(define (add-dots lop)
  (cond
    [(empty? lop) matx]
    [else
     (place-image dot
                  (posn-x (first lop))
                  (posn-y (first lop))
                  (add-dots (rest lop)))]))


(add-dots
 (cons (make-posn 10 20)
       (cons (make-posn 30 40)
             (cons (make-posn 50 60)
                   (cons (make-posn 70 80) '())))))