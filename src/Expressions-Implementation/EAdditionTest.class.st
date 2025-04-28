Class {
	#name : 'EAdditionTest',
	#superclass : 'TestCase',
	#category : 'Expressions-Implementation',
	#package : 'Expressions-Implementation'
}

{ #category : 'tests' }
EAdditionTest >> testEvaluate [

	| exp1 exp2 |
	exp1 := EConstant new value: 5.
	exp2 := ENegation new expression: (EConstant new value: 6).
	self
		assert: (EAddition new left: exp1; right: exp2) evaluate
		equals: -1
]

{ #category : 'tests' }
EAdditionTest >> testNegated [

	| exp1 exp2 |
	exp1 := EConstant new value: 5.
	exp2 := ENegation new expression: (EConstant new value: 6).
	self
		assert: (EAddition new
				 left: exp1;
				 right: exp2) negated evaluate
		equals: 1
]
