;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise_1.4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #t () #f)))
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; computes a + |b| because it first evaluates the if statement
; and then it either does a + b or a - b depending on the sign of b