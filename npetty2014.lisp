; Nick Petty
; CLISP Asignment
; The input list is recursively iterated over, and a new list is output.
; The new list is made of all list elements excluding 'the.'
(defun filter_out_the (list)
	; Conditional statement to recursively interate through the input
	; list and check each element.
	(cond
		; Base case: if the list is empty, end the loop.
		((null list) 
			nil
		)
		; Recursive cases:
		; First element is 'the' so it is not added to output.
		((equal 'the (car list))
			(filter_out_the (cdr list))
		)
		; First element is not 'the' so it is added to the output list.
		; Assuming valid input, if the first two cases are not executed,
		; this case must be true.  The 't' is used to ensure this condition
		; is met.
		(t
			(cons (car list) (filter_out_the (cdr list)))
		)
	)
)