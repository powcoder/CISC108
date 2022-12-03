;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname list-examples) (read-case-sensitive #t) (teachpacks ((lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.ss" "teachpack" "2htdp")) #f)))
;; ListOfNumber is one of: 
;;  - empty
;;  - (cons String ListOfNumber)
;; interp. a list of nubmers
(define LS0 empty) 
(define LS1 (cons "1" empty))
(define LS2 (cons "1" (cons "2" empty)))
(define LS3 (cons "1" (cons "2" (cons "3" empty))))
#;
(define (fn-for-lon lon) 
  (cond [(empty? lon) (...)]
        [else
         (... (first lon)
              (fn-for-lon (rest lon)))]))

;; write a function to add 1 to each number in a list of numbers

;; add1-lon: ListOfNumber -> ListOfNumber
(define (add1-lon lon)
  (cond [(empty? lon) empty]
        [else
         (cons (add1 (first lon))
               (add1-lon (rest lon)))]))
(check-expect (add1-lon empty) empty)
(check-expect (add1-lon (cons 1 empty)) (cons 2 empty))
(check-expect (add1-lon (cons 1 (cons 2 empty))) (cons 2 (cons 3 empty)))

;; write a function that keeps all even number in a given list of numbers

;; evens: ListOfNumber -> ListOfNumber
(define (evens lon)
  (cond [(empty? lon) empty]
        [else
         (if (even? (first lon))
             (cons (first lon) (evens (rest lon)))
             (evens (rest lon)))]))
(check-expect (evens empty) empty)
(check-expect (evens (cons 1 empty)) empty)
(check-expect (evens (cons 2 empty)) (cons 2 empty))
(check-expect (evens (cons 1 (cons 2 empty))) (cons 2 empty))
(check-expect (evens (cons 2 (cons 1 empty))) (cons 2 empty))


;; draw-circles: ListOfNumber -> Image
(define (draw-cricles alon image)
  (cond [(empty? lon) image]
        [else
         (beside (draw-circle (first lon)))
         (draw-cricles (rest lon))]))