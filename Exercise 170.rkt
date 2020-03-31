;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 170|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct phone [area three four])

(define (replace val)
  (cond
    [(empty? val) '()]
    [else
     (cons (replace/not (first val) 281)
           (replace (rest val)))]))

(define (replace/not p t)
  (if (= (phone-area p) 713)
      (make-phone t
                  (phone-three p)
                  (phone-four p))p))

(check-expect (replace
               (cons (make-phone 713 871 7283) '()))
              (cons (make-phone 281 871 7283) '()))