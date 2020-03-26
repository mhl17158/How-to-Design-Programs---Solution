;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 141|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (cat l)
  (cond
    [(empty? l) ""]
    [else
     (string-append (first l)
                    (cat (rest l)))]))

(check-expect
 (cat
  (cons "Hello"
        (cons " "
              (cons "World" '()))))"Hello World")