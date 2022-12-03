;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname lab6) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


; a list of numbers or lists (LoNoL) is ; - empty
; - (cons number LoNoL)
; - (cons LoNoL LoNol)


(define L0 empty)

(define L1 (list 1 2 3 4 5))

(define L2 (list (list 1 (list 2) 3) (list (list 4 5))))


;; flatten LoNoL -> LoN
;; Consumes:
;;    LoNoL L1: a list of numbers or lists
;; Produces: a list of numbers

(define (flatten L1)
  (cond
    [(empty? L1) '()]
    [ (list? (first L1)) (append (flatten (first L1)) (flatten (rest L1)))]

    [else (cons (first L1) (flatten (rest L1)) )]))
  

(check-expect (flatten L0) empty)
(check-expect (flatten L1) L1)
(check-expect (flatten L2) L1)

(check-expect (flatten (list 1 (list 2 3) (list 4 5 6 (list 7 8))))  (list 1 2 3 4 5 6 7 8))
(check-expect (flatten (list 1 (list 2 3) (list 4 (list 5 6) (list 7 8)) (list (list 9) (list 10))))  (list 1 2 3 4 5 6 7 8 9 10))

