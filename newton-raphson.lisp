(define (abs x)
  (if (< x 0) (- x) x))

(define (newton-raphson func-inv x func-next-guess guess tolerance)
  (if (< (abs (- (func-inv guess) x)) tolerance)
      guess (newton-raphson func-inv x func-next-guess (func-next-guess x guess) tolerance)))
