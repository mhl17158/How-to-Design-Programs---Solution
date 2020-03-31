;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 175|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/batch-io)

(define (count* list)
  (make-lwl (total_letters list)
            (total_words   list)
            (total_lines   list)))

(define (total_letters words)
  (cond
    [(empty? words) 0]
    [else
     (+ (word_letters (first words))
        (total_letters (rest words)))]))

(check-expect (total_letters lines) 16)

(define (word_letters word)
  (cond
    [(empty? word) 0]
    [else
     (+ (string-length (first word))
        (word_letters (rest word)))]))

(check-expect (word_letters (cons "hashim" '()))6)

(define (total_words line)
  (cond
    [(empty? line) 0]
    [else
     (+ (length (first line))
        (total_words (rest line)))]))

(check-expect (total_words lines) 3)

(define (total_lines lines)
  (cond
    [(empty? lines) 0]
    [else (+ 1 (total_lines (rest lines)))]))

(check-expect (total_lines lines) 1)

(define-struct lwl (letters words lines))
 
(define line
  (cons "Hello"
        (cons "World"
              (cons "Hashim" '())))) 

(define lines (cons line '()))

(check-expect (count* lines) (make-lwl 16 3 1))