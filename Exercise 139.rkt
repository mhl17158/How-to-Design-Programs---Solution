;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 139|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (sum-numbers val)
  (cond
    [(empty? val) 0]
    [else
     (+ (first val)
        (sum-numbers (rest val)))]))

(define num1
  (cons 5 '()))
(define num2
  (cons -1 '()))

(check-expect
 (ispositive?
  (cons 1 '())) #true)
(check-expect
 (ispositive?
  (cons 1
        (cons -2 '()))) #false)

(define (ispositive? val)
  (cond
    [(empty? val) #true]
    [else
     (and (positive? (first val))
          (ispositive? (rest val)))]))

(check-expect
 (sum
  (cons 1
        (cons 2 '()))) 3)
(check-error
 (sum
  (cons 1
        (cons -2 '())))-1)

(define (sum val)
  (cond [(ispositive? val) (sum-numbers val)]
        [else
         (error "List have negative numbers")]))



