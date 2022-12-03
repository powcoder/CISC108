;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname list-of-number) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;; ListOfNumber is one of:
;;  - empty         
;;  - (cons Number ListOfNumber)
;; interp. a list of numbers

(define LON1 empty)                  
(define LON2 (cons 1 empty))
(define LON3 (cons 2 LON2))

#;
(define (fn-for-lon alon)
  (cond [(empty? alon) ...]
        [(cons? alon) 
         (first alon)              ; Number
         (fn-for-lon (rest alon))  ; ListOfNumber
         ...]))

;; Design a function to calculate the sum of all number in a list of numbers

;; sum-numbers: ListOfNumber -> Number
;; consumes: a list of numbers
;; produces: the sum of the given list of numbers
(check-expect (sum-numbers empty) 0)
(check-expect (sum-numbers (cons 2 (cons 1 (cons 0 empty)))) 3)
(define (sum-numbers alon)
  (cond [(empty? alon) 0]
        [(cons? alon) 
         (+ (first alon) (sum-numbers (rest alon)))]))


;; Design a function to check whether a list of numbers contains a given number
;; contains?: ListOfNumber Number -> Boolean
;; consumes: a list of numbers and a number
;; produces: true if the given list contains the given number
;;           false otherwise
(check-expect (contains? empty 5) false)
(check-expect (contains? (cons 2 (cons 1 (cons 0 empty))) 5) false)
(check-expect (contains? (cons 2 (cons 1 (cons 5 empty))) 5) true)
(check-expect (contains? (cons 5 (cons 1 (cons 5 empty))) 5) true)
(check-expect (contains? (cons 5 (cons 1 (cons 0 empty))) 5) true)
(define (contains? alon anumber)
  (cond [(empty? alon) false]
        [(cons? alon) 
         (if (= (first alon) anumber)
             true
             (contains? (rest alon) anumber))]))