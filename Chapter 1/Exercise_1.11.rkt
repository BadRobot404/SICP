;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise_1.11) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #t () #f)))
(define (f n)
  (if (< n 3) n (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))

(define (f-new n)
  (f-iter 2 1 0 n 0))

(define (f-iter a b c n sum)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        ((= n 2) 2)
        ((= n 3) (+ a (* 2 b) (* 3 c)))
        (else (f-iter (+ a (* 2 b) (* 3 c)) a b (- n 1) (+ sum a (* 2 b) (* 3 c))))))

(f 5)
(f-new 5)