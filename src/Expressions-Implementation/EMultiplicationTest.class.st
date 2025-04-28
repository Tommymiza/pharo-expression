Class {
	#name : 'EMultiplicationTest',
	#superclass : 'TestCase',
	#category : 'Expressions-Implementation',
	#package : 'Expressions-Implementation'
}

{ #category : 'tests' }
EMultiplicationTest >> testEvaluate [

	| exp1 exp2 |
	exp1 := EConstant new value: 5.
	exp2 := EAddition new
		        right: (ENegation new expression: (EConstant new value: 5));
		        left: (EConstant new value: 3).
	self
		assert: (EMultiplication
				 left: exp1;
				 right: exp2) evaluate
		equals: -10
]

{ #category : 'tests' }
EMultiplicationTest >> testNegated [

	| exp1 exp2 |
	exp1 := EConstant new value: 5.
	exp2 := EAddition new
		        right: (ENegation new expression: (EConstant new value: 5));
		        left: (EConstant new value: 3).
	self
		assert: (EMultiplication
				 left: exp1;
				 right: exp2) negated evaluate
		equals: 10
]
