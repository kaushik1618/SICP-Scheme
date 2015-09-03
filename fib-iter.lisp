(define (fib n)
  (define (fib-iter res i)
    (if (> i n) res (fib-iter (* res i) (1+ i))))
  (fib-iter 1 1))
