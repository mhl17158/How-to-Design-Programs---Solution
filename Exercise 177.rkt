;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 177|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct editor [f_half s_half]) 

(define (rev x)
  (cond
    [(empty? x) '()]
    [else
     (move_end (rev (rest x)) (first x))]))

(define (move_end str x)
  (cond
    [(empty? str) (cons x '())]
    [else
     (cons (first str) (move_end (rest str) x))]))

(define (create-editor f_half s_half)
  (make-editor (explode f_half) (explode s_half)))

(check-expect
 (create-editor "hello" "world")
 (make-editor (explode "hello") (explode "world")))

