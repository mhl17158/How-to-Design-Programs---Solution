;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 165|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define words
  (cons "robot"
        (cons "hello"
              (cons "world"
                    (cons "robot" '())))))

(define (subst-robot val)
  (cond
    [(empty? val) '()]
    [else
     (if (string=? (first val) "robot")
         (cons "r2d2" (subst-robot (rest val)))
         (cons (first val) (subst-robot (rest val))))]))

(define (substitute old new val)
  (cond
    [(empty? val) '()]
    [else
     (if (string=? (first val) old)
         (cons new (substitute old new (rest val)))
         (cons (first val) (substitute old new (rest val))))]))

(check-expect
 (subst-robot words)
 (cons "r2d2"
       (cons "hello"
             (cons "world"
                   (cons "r2d2" '())))))

(check-expect
 (substitute "robot" "terminator" words)
 (cons "terminator"
       (cons "hello"
             (cons "world"
                   (cons "terminator" '())))))