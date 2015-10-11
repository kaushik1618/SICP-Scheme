(define (call-each procs)
  (cond ((eq? procs '()) 'done)
	(else ((car procs)) (call-each (cdr procs)))))

(define (poker-object)
  (let ((object-value 0) (pokees-list '()))
	(define (update-value! new-value)
	  (set! object-value new-value)
	  (call-each pokees-list))
	(define (add-pokee! pokee)
	  (set! pokees-list (cons pokee pokees-list))
	  (pokee))
	(define (dispatch proc)
	  (cond ((eq? proc 'get-value) object-value)
		((eq? proc 'update-value!) update-value!)
		((eq? proc 'add-pokee!) add-pokee!)
		(else 'Error)))
	dispatch))

(define (get-value thing) (thing 'get-value))

(define (set-value! thing new-value) ((thing 'update-value!) new-value))

(define (add-callback! thing callback) ((thing 'add-pokee!) callback))
