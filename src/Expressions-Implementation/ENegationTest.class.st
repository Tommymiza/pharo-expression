Class {
	#name : 'ENegationTest',
	#superclass : 'TestCase',
	#category : 'Expressions-Implementation',
	#package : 'Expressions-Implementation'
}

{ #category : 'tests' }
ENegationTest >> testEvaluate [
	self assert: (ENegation new expression: (EConstant new value: 5)) evaluate equals: -5
]
