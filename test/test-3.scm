; (test-3.scm) -*- coding: utf-8; mode: scheme -*-
; test the generated Guile bindings.

; (c) lloda@sarc.name 2019, 2021
; This library is free software; you can redistribute it and/or modify it under
; the terms of the GNU Lesser General Public License as published by the Free
; Software Foundation; either version 3 of the License, or (at your option) any
; later version.

(import (prop-618 prop) (prop-618 atmospheres) (srfi :64))

(test-begin "prop-618")

(define-values (p rho temp ne) (p835-ref 0.))
(test-approximate 7.5 rho 1e-15)
(test-approximate 288.15 temp 1e-15)
(test-approximate 1013.25 p 1e-15)
(test-eq 0 ne)

(define hr (p839-rain-height 3.133 101.7))
(test-approximate 4.9579744 hr 1e-15)

(define error-count (test-runner-fail-count (test-runner-current)))
(test-end "prop-618")
(exit error-count)
