(define (sigma term a next b)
  (if (> a b) 0 (+ (term a) (sigma term (next a) next b))))
