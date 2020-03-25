;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 134|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (contains-string? string alon)
  (cond
    [(empty? alon) #false]
    [(cons? alon)
     (or (string=? (first alon) string)
            (contains-string? string (rest alon)))]))

(check-expect
  (contains-string? "flatt"
                    (cons "flatt"
                          (cons "Hashim"
                                (cons "Hamza" '()))))#true)