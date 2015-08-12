(define point cons)
(define x-coord car)
(define y-coord cdr)

(define (+points a b) (point (+ (x-coord a) (x-coord b)) (+ (y-coord a) (y-coord b))))
(define (*point a n) (point (* (x-coord a) n) (* (y-coord a) n)))
(define (*x-coord a n) (point (* (x-coord a) n) 0))
(define (*y-coord a n) (point 0 (* (y-coord a) n)))

(define (rect orig horiz vert)
  (lambda (p) (+points orig (+points (*x-coord p horiz) (*y-coord p vert)))))
