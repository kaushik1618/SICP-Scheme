(define (sqr x) (* x x))

(define (sqrt-next-guess x guess) (/ (+ guess (/ x guess)) 2.0))
