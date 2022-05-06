;2) Construya la funcion recursiva primer-numero. Esta funcion recibe una lista y devuelve el primer elemento de esa lista que es un número.
(define (primer-numero lista)
  (cond ((null? lista)
         '())
        ((number? (car lista))
         (car lista))
        (else
         (primer-numero (cdr lista))
         )
  ))