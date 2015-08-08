(define (sqr x) (* x x))

(define (cube x) (* x x x))

(define (double x) (* x 2))

(define (deriv-func f dx)
  (lambda (x) (/ (- (f (+ x dx)) (f x)) dx)))
