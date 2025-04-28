Class {
	#name : 'EAddition',
	#superclass : 'Object',
	#instVars : [
		'left',
		'right'
	],
	#category : 'Expressions-Implementation',
	#package : 'Expressions-Implementation'
}

{ #category : 'public access' }
EAddition >> evaluate [
	^ (left evaluate) + (right evaluate)
]

{ #category : 'accessing' }
EAddition >> left: anExp [ 
	left := anExp
]

{ #category : 'arithmetic' }
EAddition >> negated [
	right:= ENegation new expression: right.
	left:= ENegation new expression: left.
	^self
]

{ #category : 'accessing' }
EAddition >> right: anExp [ 
	right:= anExp
]
