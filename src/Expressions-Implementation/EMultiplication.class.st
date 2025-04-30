Class {
	#name : 'EMultiplication',
	#superclass : 'Object',
	#instVars : [
		'left',
		'right'
	],
	#classInstVars : [
		'left',
		'right'
	],
	#category : 'Expressions-Implementation',
	#package : 'Expressions-Implementation'
}

{ #category : 'public access' }
EMultiplication class >> evaluate [
	^ (left evaluate) * (right evaluate)
]

{ #category : 'accessing' }
EMultiplication class >> left: anExp [ 
	left:= anExp
]

{ #category : 'arithmetic' }
EMultiplication class >> negated [

	^ ENegation new expression: self
]

{ #category : 'accessing' }
EMultiplication class >> right: anExp [ 
	right:= anExp
]

{ #category : 'visiting' }
EMultiplication >> accept: aVisitor [ 
	^ aVisitor visitMultiplication: self
]

{ #category : 'accessing' }
EMultiplication >> left [

	^ left
]

{ #category : 'accessing' }
EMultiplication >> left: anObject [

	left := anObject
]

{ #category : 'accessing' }
EMultiplication >> right [

	^ right
]

{ #category : 'accessing' }
EMultiplication >> right: anObject [

	right := anObject
]
