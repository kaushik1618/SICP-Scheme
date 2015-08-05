(define (next-fib n a b)
  (if (= n 0) a
    (next-fib (-1+ n) b (+ a b))))

(define (fib n) (next-fib n 0 1))
