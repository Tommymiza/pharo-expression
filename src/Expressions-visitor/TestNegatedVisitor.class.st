Class {
	#name : 'TestNegatedVisitor',
	#superclass : 'TestCase',
	#category : 'Expressions-visitor',
	#package : 'Expressions-visitor'
}

{ #category : 'tests' }
TestNegatedVisitor >> testNegatedVisitorAddition [

	| a |
	a := EAddition new
		     left: (EConstant new value: 15);
		     right: (ENegation new expression: (EConstant new value: 5)).
	self assert: (a accept: NegatedVisitor new) equals: -10
]

{ #category : 'tests' }
TestNegatedVisitor >> testNegatedVisitorConstant [
	| c |
	c := EConstant new value: 5.
	self assert: (c accept: NegatedVisitor new) equals: -5
]

{ #category : 'tests' }
TestNegatedVisitor >> testNegatedVisitorMultiplication [

	| a |
	a := EMultiplication new
		     left: (EConstant new value: 3);
		     right: (EConstant new value: 5).
	self assert: (a accept: NegatedVisitor new) equals: -15
]

{ #category : 'tests' }
TestNegatedVisitor >> testNegatedVisitorNegation [

	| c |
	c := ENegation new expression: (EConstant new value: 5).
	self assert: (c accept: NegatedVisitor new) equals: 5
]
