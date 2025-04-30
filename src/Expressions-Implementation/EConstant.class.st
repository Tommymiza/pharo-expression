Class {
	#name : 'EConstant',
	#superclass : 'Object',
	#instVars : [
		'value'
	],
	#category : 'Expressions-Implementation',
	#package : 'Expressions-Implementation'
}

{ #category : 'visiting' }
EConstant >> accept: aVisitor [

	^ aVisitor visitConstant: self
]

{ #category : 'public access' }
EConstant >> evaluate [
	^ value
]

{ #category : 'arithmetic' }
EConstant >> negated [

	^ ENegation new expression: self
]

{ #category : 'accessing' }
EConstant >> value [
	^ value
]

{ #category : 'accessing' }
EConstant >> value: anInteger [ 
	value:= anInteger
]
