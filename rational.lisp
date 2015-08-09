(define (rat a b) (cons a b))
(define (numer x) (car x))
(define (denom x) (cdr x))

(define (+rat g h) (rat (+ (* (numer g) (denom h)) (* (numer h) (denom g))) (* (denom g) (denom h))))
(define (*rat g h) (rat (* (numer g) (numer h)) (* (denom g) (denom h))))
