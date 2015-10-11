(define (display-nl stuff) (display stuff) (newline))

(define (call-each procs)
  (cond ((eq? procs '()) 'called)
	(else ((car procs)) (call-each (cdr procs)))))

(define (poker-object)
  (let ((object-value 0) (pokees-list '()))
	(define (update-value! new-value)
	  (if (not (= object-value new-value))
	      (begin
	       (set! object-value new-value)
	       (call-each pokees-list))
	      (display-nl 'Redundant\ update\ ignored.)))
	(define (add-pokee! pokee)
	  (set! pokees-list (cons pokee pokees-list))
	  (pokee)
	  'added)
	(define (dispatch proc)
	  (cond ((eq? proc 'get-value) object-value)
		((eq? proc 'display-value) (display-nl object-value))
		((eq? proc 'update-value!) update-value!)
		((eq? proc 'add-pokee!) add-pokee!)
		(else (display 'Error))))
	dispatch))

(define (get-value thing) (thing 'get-value))

(define (print-value thing) (thing 'display-value))

(define (set-value! thing new-value) ((thing 'update-value!) new-value))

(define (add-callback! thing callback) ((thing 'add-pokee!) callback))


; Sample usage

(define poker (poker-object))

(define pokee-0 (lambda() (display-nl 'Pokee\ 0\ was\ called\ back!)))

(define pokee-1 (lambda() (display-nl 'Pokee\ 1\ was\ called\ back!)))


(newline) (newline)

(display-nl 'Poker\'s\ initial\ value.)

(print-value poker)


(display-nl 'Updating\ Poker\'s\ value\ to\ 1.)

(set-value! poker 1)


(display-nl 'Poker\'s\ current\ value.)

(print-value poker)


(display-nl 'Adding\ Pokee\ 0\ to\ callbacks.)

(add-callback! poker pokee-0)


(display-nl 'Updating\ Poker\'s\ value\ to\ 2.)

(set-value! poker 2)


(display-nl 'Poker\'s\ current\ value.)

(print-value poker)


(display-nl 'Adding\ Pokee\ 1\ to\ callbacks.)

(add-callback! poker pokee-1)


(display-nl 'Updating\ Poker\'s\ value\ to\ 3.)

(set-value! poker 3)


(display-nl 'Poker\'s\ current\ value.)

(print-value poker)


(display-nl 'Updating\ Poker\'s\ value\ to\ 3\ redundantly.)

(set-value! poker 3)


(newline)
