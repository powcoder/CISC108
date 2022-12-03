;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname enumeration-examples) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; a Meridian is either
;; -- "am"
;; -- "pm"
(define MERIDIAN1 "am")
(define MERIDIAN2 "pm")
#|
(define (meridian-fn ameridian)
  (cond [(string=? ameridian "am") ...]
        [(string=? ameridian "pm") ...]))
|#


;; a FloorNumber is
;; -- 1
;; -- 2
;; -- 3
;; -- 4
(define FLOORNUMBER1 1)
(define FLOORNUMBER2 2)
#|
(define (floor-number-fn afloor-number)
  (cond [(= afloor-number 1) ...]
        [(= afloor-number 2) ...]
        [(= afloor-number 3) ...]
        [(= afloor-number 4) ...]))
|#