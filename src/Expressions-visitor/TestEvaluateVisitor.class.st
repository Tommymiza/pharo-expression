Class {
	#name : 'TestEvaluateVisitor',
	#superclass : 'TestCase',
	#category : 'Expressions-visitor',
	#package : 'Expressions-visitor'
}

{ #category : 'tests' }
TestEvaluateVisitor >> testEvaluateVisitorEAddition [

	| a |
	a := EAddition new
		     left: (EConstant new value: 5);
		     right: (ENegation new expression: (EConstant new value: 5)).
	self assert: (a accept: EvalVisitor new) equals: 0
]

{ #category : 'tests' }
TestEvaluateVisitor >> testEvaluateVisitorEConstant [

	| c |
	c := EConstant new value: 5.

	self assert: (c accept: EvalVisitor new)  equals: 5
]

{ #category : 'tests' }
TestEvaluateVisitor >> testEvaluateVisitorEMultiplication [

	| a |
	a := EMultiplication new
		     left: (EConstant new value: 5);
		     right: (ENegation new expression: (EConstant new value: 5)).
	self assert: (a accept: EvalVisitor new) equals: -25
]

{ #category : 'tests' }
TestEvaluateVisitor >> testEvaluateVisitorENegation [

	| c |
	c := ENegation new expression: (EConstant new value: 5).

	self assert: (c accept: EvalVisitor new) equals: -5
]
