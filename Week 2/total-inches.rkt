;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname total-inches) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; Develop the function, total-inches. The function consumes a length
;; represented by two numbers: the first a number of feet, and the second
;; a number of inches. The function produces the total length in inches. 

;; positive-number is a number >= 0

;; total-inches: positive-number positive-number -> positive-number
;; consumes: a positive number representing feet and a number representing inches
;; produces: total number of inches
(define (total-inches feet inches)
  (+ (* feet 12) inches))

(check-expect (total-inches 1 1) 13)
(check-expect (total-inches 0 0) 0)
(check-expect (total-inches 5 10) 70)
