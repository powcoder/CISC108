;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname multi-argument-comparisons) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; Boolean operators can take more than two arguments
(< 1 2 3 4) ; 1 < 2 < 3 < 4

;; This is useful to replace compound / nested conditionals

(define N 5)

;; is n larger than 0 and less than 10?
(and (> N 0) (< N 10)) ; compund expression
(< 0 N 10)             ; multiple arguments




