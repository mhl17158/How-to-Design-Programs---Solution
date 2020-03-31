;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 173|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/batch-io)
  
(define (remove_ words)
  (cond
    [(empty? words) ""]
    [else (string-append (remove_/articles (first words))
                         "\n"
                         (remove_ (rest words)))]))

(define (remove_/articles strs)
  (cond
    [(empty? strs) ""]
    [else
     (string-append (check (first strs))
                    (remove_/articles (rest strs)))]))

(define (check val)
  (if (or (string=? val "a")
          (string=? val "an")
          (string=? val "the"))""
      (string-append val " ")))
 
(define line
  (cons "hello"
        (cons "the"
              (cons "world" '()))))
 
(define str (cons line '()))

(check-expect (remove_ str) "hello world \n")
