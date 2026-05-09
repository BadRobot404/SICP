;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise_1.1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #t () #f)))
10                                 ;prints 10
(+ 5 3 4)                          ;prints 12
(- 9 1)                            ;prints 8
(/ 6 2)                            ;prints 3
(+ (* 2 4) (- 4 6))                ;prints 6
(define a 3)                       ;prints nothing
(define b (+ a 1))                 ;prints nothing
(+ a b (* a b))                    ;prints 19
(= a b)                            ;prints false
(if (and (> b a) (< b (* a b)))
    b                              ;prints 4
    a)
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))          ;prints 16
      (else 25))
(+ 2 (if (> b a) b a))             ;prints 6
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))                        ;prints 16