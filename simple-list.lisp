(define nil '())

(define (scale-list l n)
  (if (null? l) nil
    (cons (* (car l) n) (scale-list (cdr l) n))))
