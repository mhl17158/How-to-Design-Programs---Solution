;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 147|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define list1
  (cons #true
        (cons #false '())))
(define list2
  (cons #false
        (cons #true
              (cons #true '()))))


(define (all-true? val)
  (cond [(empty? (rest val)) (first val)]
        [else
         (and (first val)
              (all-true? (rest val)))]))

(define (one-true? val)
  (cond [(empty? (rest val)) (first val)]
        [else
         (or (first val)
             (one-true? (rest val)))]))

(check-expect
 (all-true?
  (cons #true
        (cons #true '()))) #true)
(check-expect
 (all-true?
  (cons #false
        (cons #true '()))) #false)

