;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 171|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/batch-io)

(define (wordsCount val)
  (cond
    [(empty? val) '()]
    [else (cons (length (first val))
                (wordsCount (rest val)))]))

(define (stat file)
  (wordsCount
    (read-words/line file)))

(define line
  (cons "hello"
        (cons "world" '())))
 
(define words
  (cons line '()))
  
(check-expect (wordsCount words)
              (cons 2 '()))