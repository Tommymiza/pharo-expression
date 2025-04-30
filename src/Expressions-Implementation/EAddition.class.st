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

{ #category : 'visiting' }
EAddition >> accept: aVisitor [ 
	^aVisitor visitAddition: self.
]

{ #category : 'public access' }
EAddition >> evaluate [
	^ (left evaluate) + (right evaluate)
]

{ #category : 'accessing' }
EAddition >> left [

	^ left
]

{ #category : 'accessing' }
EAddition >> left: anExp [ 
	left := anExp
]

{ #category : 'arithmetic' }
EAddition >> negated [

	
	^ ENegation new expression: self
]

{ #category : 'accessing' }
EAddition >> right [

	^ right
]

{ #category : 'accessing' }
EAddition >> right: anExp [ 
	right:= anExp
]
