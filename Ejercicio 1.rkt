;;1) Construya una funcion que se llame vector-inverso. Esta función recibe dos argumentos: un numero N y un vector con valores entre 0 y N.
;;Debe producir un vector donde cada entrada ha sido restada al valor de N.
(define (vector-inverso n vector)
  (cond ((null? vector)
         '())
        (else
         (append (list (- n (car vector))) (vector-inverso n (cdr vector)))
         )
        )
  )