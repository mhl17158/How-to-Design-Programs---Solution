;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 157|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)

(define HEIGHT 220)
(define WIDTH   30)
(define XSHOTS (/ WIDTH 3))
(define BACKGROUND (empty-scene WIDTH HEIGHT "green"))
(define SHOT (rectangle 6 20 "solid" "black"))

(define SW1 (cons 9 '()))
(define SW2 (cons 59 (cons 15 '())))

(define (main w0)
  (big-bang w0
    [on-tick tock]
    [on-key keyh]
    [to-draw to-image]))

(check-expect (to-image SW1)
              (place-image SHOT XSHOTS 9 BACKGROUND))
(check-expect (to-image SW2)
              (place-image SHOT XSHOTS 59
                           (place-image SHOT XSHOTS 15 BACKGROUND)))

(define (to-image w)
  (cond
    [(empty? w) BACKGROUND]
    [else (place-image SHOT XSHOTS (first w)
                       (to-image (rest w)))]))

(check-expect (tock SW1) (cons 8 '()))
(check-expect (tock SW2) (cons 58 (cons 14 '())))

(define (tock w)
  (cond
    [(empty? w) '()]
    [else (cons (sub1 (first w)) (tock (rest w)))]))

(check-expect (keyh SW1 " ") (cons HEIGHT SW1))
(check-expect (keyh SW1 "a") SW1)
(check-expect (keyh SW1 "up") SW1)
(check-expect (keyh SW2 " ") (cons HEIGHT SW2))
(check-expect (keyh SW2 "down") SW2)

(define (keyh w ke)
  (if (key=? ke " ") (cons HEIGHT w) w))
