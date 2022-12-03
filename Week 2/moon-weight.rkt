;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname moon-weight) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
; Write a function to convert earth weight to moon weight

(define MOON-GRAVITY (/ 1 6))

;; moon-weight: Number -> Number
;; consumes: weight on earth
;; produces: weight on moon
(define (moon-weight earth-weight)
  (* MOON-GRAVITY earth-weight))
(check-expect (moon-weight 184.5) 30.75)
(check-expect (moon-weight 0) 0)