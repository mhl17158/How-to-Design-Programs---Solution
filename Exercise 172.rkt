;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 172|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/batch-io)
 
(define (collapse str)
  (cond
    [(empty? str) ""]
    [else (string-append (words (first str))
                         "\n"
                         (collapse (rest str)))]))

(define (words list)
  (cond
    [(empty? list) ""]
    [else
     (string-append (first list)
                    " "
                    (words (rest list)))]))

(define line (cons "hello" (cons "world" '())))
 
(define str (cons line '()))
 
(check-expect (collapse str) "hello world \n")
 