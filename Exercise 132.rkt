;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 132|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (contains-flatt? alon)
  (cond
    [(empty? alon) #false]
    [(cons? alon)
     (or (string=? (first alon) "Flatt")
         (contains-flatt? (rest alon)))]))

(check-expect
  (contains-flatt?
   (cons "Fagan"
         (cons "Findler"
               (cons "Fisler"
                     (cons "Flanagan"
                           (cons "Flatt"
                                 (cons "Felleisen"
                                       (cons "Friedman" '()))))))))#true)