;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 163|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define listF
  (cons 92
        (cons 34.2
              (cons 127
                    (cons 93.7 '())))))

(define listC
  (cons 33.33
        (cons 1.22
              (cons 52.78
                    (cons 34.28 '())))))

(define (function val)
  (cond
    [(empty? val) ...]
    [else
     (... (first val)
          (function (rest val)))]))

(define (convertFC val)
  (cond
    [(empty? val) '()]
    [else
     (cons (* (- (first val) 32) 5/9)
           (convertFC (rest val)))]))


(check-within (convertFC listF) listC 0.01)
