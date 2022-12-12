(set-info :smt-lib-version 2.6)
(set-logic QF_NRA)
(set-info :source |
Generated by: Casey Mulligan, Russell Bradford, James H. Davenport, Matthew England, and ZakTonks
Generated on: 2018-04-19
Generator: TheoryGuru
Application: Supply-Demand: Incidence parameter for scenario analysis, assumption set
Target solver: Z3
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)

; Code written by TheoryGuru
; Mulligan model #0015
;   is part of the example library included in "Quantifier Elimination for Reasoning in Economics" April 2018
;   by Mulligan, Bradford, Davenport, England, and Tonks
;   available at bathpaper.economicreasoning.com .
; Economics background for this and other examples is provided at examples.economicreasoning.com .

(declare-fun v1 () Real)
(declare-fun v2 () Real)
(declare-fun v3 () Real)
(declare-fun v4 () Real)
(declare-fun v5 () Real)
(declare-fun v6 () Real)
(declare-fun v7 () Real)
(declare-fun v8 () Real)
(declare-fun v9 () Real)
(declare-fun v10 () Real)
(declare-fun v11 () Real)
(declare-fun v12 () Real)

; input assumptions
(define-fun assumptions () Bool (and 
(= (+ (* v11 v6) (* v2 v9)) v8)
(= v8 (+ (* v10 v4) (* v12 v6)))
(= v4 v3)
(= v2 0)
(= (+ (* v11 v5) (* v1 v9)) v7)
(= v7 (+ (* v10 v3) (* v12 v5)))
(= v9 1)
(= v10 1)
(< v11 0)
(> v12 0)
(< v7 0)
(= v5 0)
))

; input hypothesis
(define-fun hypothesis () Bool 
(= (+ (* v11 v7) (* v12 v8)) (* v11 v8))
)

(assert assumptions)
(check-sat) ; confirming that assumptions are not contradictory

(exit)