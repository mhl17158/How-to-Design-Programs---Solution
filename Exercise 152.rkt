;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 152|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

(define (col n img)
  (cond
    [(zero? n) empty-image]
    [else
     (above img
            (col (sub1 n) img))]))

(define (row n img)
  (cond
    [(zero? n) empty-image]
    [else
     (beside img
             (row (sub1 n) img))]))

(define img (square 3 "solid" "blue"))

(check-expect (col 4 img) (above img img img img))
(check-expect (row 4 img) (beside img img img img))

