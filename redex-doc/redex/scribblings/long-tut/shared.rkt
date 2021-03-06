#lang at-exp racket/base

(provide
  goals  ;; bulletize goals 
  ntt    ;; nested tt 
  common ;; where are the common definitions? 
  (for-label (all-from-out redex/reduction-semantics racket/base))
  (all-from-out
    "exercise/ex.rkt"
    scribble/example
    racket/sandbox
    scribble/core
    scriblib/figure))

;; -----------------------------------------------------------------------------
(require
  "exercise/ex.rkt"
  (for-label racket/base redex/reduction-semantics)
  scribble/manual
  scribble/core
  scribble/example
  racket/sandbox
  scriblib/figure)


(define-syntax-rule
   (goals (item x ...) ...)
   @list{
     @tabular[#:style 'boxed
       @list[
         @list[@bold{Goals}]
	 @list[(t " --- " x ...)] ... ]]})
;; @list[@itemlist[ x ... ]]]]})

(define-syntax-rule
  (ntt x ...)
  (nested #:style 'inset (tt x ...)))

(define (common)
@list{
The following exercises refer to several definitions found in, and exported
from, @seclink["common.rkt"]. You may either copy these
definitions into your file or add the following @racket[require] statement
to the top of your file: 
@;%
@(begin
#reader scribble/comment-reader
(racketblock
(require "common.rkt")
))
@;%
 }
)
