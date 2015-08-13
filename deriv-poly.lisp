(define atom? (lambda (x) (not (pair? x))))

(define (deriv-poly exp var)
  (cond ((constant? exp var) 0)
	((same-var? exp var) 1)
	((sum? exp) (make-sum (deriv-poly (a1 exp) var) (deriv-poly (a2 exp) var)))
	((product? exp) (make-sum (make-product (m1 exp) (deriv-poly (m2 exp) var)) (make-product (deriv-poly (m1 exp) var) (m2 exp))))))

(define (constant? exp var) (and (atom? exp) (not (eq? exp var))))

(define (same-var? exp var) (and (atom? exp) (eq? exp var)))

(define (sum? exp) (and (not (atom? exp)) (eq? (car exp) '+)))

(define (product? exp) (and (not (atom? exp)) (eq? (car exp) '*)))

(define (make-sum a b) (list '+ a b))

(define (make-product a b) (list '* a b))

(define a1 cadr)

(define a2 caddr)

(define m1 cadr)

(define m2 caddr)
