(provide __temp__ (for-syntax dummy)) 

(define (hello-world) (displayln "hello-world!"))
(define __temp__ 10)

(define-syntax dummy
  (syntax-rules ()
    [(dummy a b ...)
     (if a (begin (hello-world) b ...) void)]))

(define-syntax dummy2
  (syntax-rules ()
    [(dummy2 a b ...)
     (if a (begin b ...) void)]))