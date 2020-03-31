;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 169|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (legal lop)
  (cond
    [(empty? lop) '()]
    [else
     (if (not (inLimit? (first lop)))
         (cons (first lop) (legal (rest lop)))
         (legal (rest lop)))]))
(define (inLimit? p)
  (and (> (posn-x p) 100) (> (posn-y p) 200)))

(check-expect (legal
               (cons (make-posn 142.4 245.2)
                     (cons (make-posn 72 34)
                           (cons (make-posn 92 75) '()))))
              (cons (make-posn 72 34)
                    (cons (make-posn 92 75) '())))