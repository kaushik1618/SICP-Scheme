(define nil '())

(define (map-list l func)
  (if (null? l) nil
    (cons (func (car l)) (map-list (cdr l) func))))
