;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 142|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

(define (ill-size? val n)
  (cond [(empty? val) #false]
        [else
         (if (img-square? (first val) n)
             (first val)
             (ill-size? (rest val) n))]))

(define (img-square? img n)
  (and (= (image-height img) n)
       (= (image-width img) n)))

(check-expect (ill-size? (cons (rectangle 10 20 "solid" "blue")
                               (cons (rectangle 20 10 "solid" "blue") '()))10)#false)