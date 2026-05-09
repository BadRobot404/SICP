;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise_1.3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #t () #f)))
(define (sum3 a b c)
  (cond ((and (>= a b) (>= a c) (>= b c)) (+ (* a a) (* b b)))
  ((and (>= a b) (>= a c) (>= c b)) (+ (* a a) (* c c)))
  ((and (>= b a) (>= b c) (>= c a)) (+ (* c c) (* b b)))
  ((and (>= b a) (>= b c) (>= a c)) (+ (* a a) (* b b)))
  ((and (>= c a) (>= c b) (>= a b)) (+ (* a a) (* c c)))
  ((and (>= c a) (>= c b) (>= b a)) (+ (* c c) (* b b)))))

(sum3 1 2 3) ; testing cases
(sum3 3 2 1)
(sum3 1 3 2)
(sum3 2 3 1)
(sum3 1 1 3)
(sum3 1 3 1)
(sum3 3 1 1)
(sum3 3 3 3)