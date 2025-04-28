Class {
	#name : 'EConstantTest',
	#superclass : 'TestCase',
	#category : 'Expressions-Implementation',
	#package : 'Expressions-Implementation'
}

{ #category : 'tests' }
EConstantTest >> testEvaluate [
	self assert: (EConstant new value: 5) evaluate equals: 5
]

{ #category : 'tests' }
EConstantTest >> testNegated [

	self assert: (EConstant new value: 5) negated evaluate equals: -5
]
