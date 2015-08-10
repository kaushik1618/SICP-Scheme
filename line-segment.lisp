(define (point x y) (cons x y))
(define (x-coord point) (car point))
(define (y-coord point) (cdr point))

(define (segment a b) (cons a b))
(define (seg-start x) (car x))
(define (seg-end x) (cdr x))

(define (slope l)
  (/ (- (y-coord (seg-end l)) (y-coord (seg-start l))) (- (x-coord (seg-end l)) (x-coord (seg-start l)))))
