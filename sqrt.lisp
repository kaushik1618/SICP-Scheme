(define (abs x)
	(if (< x 0) (- x) x))

(define (sqr x)
	(* x x))

(define (good-enough-sqrt x guess tolerance)
	(< (abs (- x (sqr guess))) tolerance))

(define (avg x y)
	(/ (+ x y) 2.0))

(define (try-sqrt x guess)
	(if (good-enough-sqrt x guess 0.1) guess (try-sqrt x (avg guess (/ x guess)))))

(define (sqrt x) (try-sqrt x 1.0))