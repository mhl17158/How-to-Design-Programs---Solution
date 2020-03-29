;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 154|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct layer [color doll])

(define RD1 "yellow")
(define RD2 (make-layer "yellow" (make-layer "green" "red")))

(check-expect (depth RD1) 1)
(check-expect (depth RD2) 3)

(define (depth an-rd)
  (cond
    [(string? an-rd) 1]
    [else (+ (depth (layer-doll an-rd)) 1)]))

(check-expect (colors RD1) "yellow")
(check-expect (colors RD2) "yellow, green, red")

(define (colors rd)
  (cond
    [(string? rd) rd]
    [else
     (string-append (layer-color rd)
                    ", "
                    (colors (layer-doll rd)))]))