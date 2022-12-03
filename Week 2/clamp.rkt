;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname clamp) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; In many applications, it's useful to have a way to ensure
;; a given value is within a range

;; Design a function that accepts a number and a range
;; and produces the given number if its within the range,
;; the lower end of the range if the number is less than,
;; or the upper end of the range if the number is greater

;; clamp: Number Number Number -> Number
;; consumes: a number and a range as a min and max value
;; produces: given number when min < given number < max
;;           max value when given number > max
;;           min value when given number < min
(define (clamp number min max)
  #;(if (< number min)
      min
      (if (< number max)
          number
          max))
  (cond [(< number min)  min]
        [(> number max) max]
        [else number])
  )
(check-expect (clamp 5 0 10) 5)
(check-expect (clamp -1 0 10) 0)
(check-expect (clamp 11 0 10) 10)
(check-expect (clamp 0 0 10) 0)
(check-expect (clamp 10 0 10) 10)



;; cond expression

(cond [question1 answer1]
      [question2 answer2]
      ...
      [else ...])
      