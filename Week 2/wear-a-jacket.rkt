;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname wear-a-jacket) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; design a function to determine if you need to wear a jacket

;; wear-a-jacket?: Number Boolean -> Boolean
;; consumes: temperature in degrees C of current locaiton
;; produces:
(define (wear-a-jacket? temp rain?)
  (or (< temp 32)
      rain?))
(check-expect (wear-a-jacket? 32.01 true) true)
(check-expect (wear-a-jacket? 31.9 true) true)

(check-expect (wear-a-jacket? 32 true) true)
(check-expect (wear-a-jacket? 70 false) false)