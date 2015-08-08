(define (nth-deriv-func func dx n)
  (if (= n 0) func (nth-deriv-func (deriv-func func dx) dx (-1+ n))))
