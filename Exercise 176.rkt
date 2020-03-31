;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 176|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (first* lln)
  (cond
    [(empty? lln) '()]
    [else (cons (first (first lln))
                (first* (rest lln)))]))

(define (rest* lln)
  (cond
    [(empty? lln) '()]
    [else (cons (rest (first lln))
                (rest* (rest lln)))]))

(define (transpose lln)
  (cond
    [(empty? (first lln)) '()]
    [else (cons (first* lln) (transpose (rest* lln)))]))

(define wor1 (cons 11 (cons 21 '())))
(define wor2 (cons 12 (cons 22 '())))
(define tmatx (cons wor1 (cons wor2 '())))

(define row1 (cons 11 (cons 12 '())))
(define row2 (cons 21 (cons 22 '())))
(define matx (cons row1 (cons row2 '())))

(check-expect (transpose matx) tmatx)
 
