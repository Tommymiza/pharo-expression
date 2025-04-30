Class {
	#name : 'ENegation',
	#superclass : 'Object',
	#instVars : [
		'expression'
	],
	#category : 'Expressions-Implementation',
	#package : 'Expressions-Implementation'
}

{ #category : 'visiting' }
ENegation >> accept: aVisitor [
	^ aVisitor visitNegation: self
]

{ #category : 'public access' }
ENegation >> evaluate [

	^ (expression evaluate) negated
]

{ #category : 'accessing' }
ENegation >> expression [
	^ expression
]

{ #category : 'instance creation' }
ENegation >> expression: anExpression [

	expression := anExpression
]

{ #category : 'arithmetic' }
ENegation >> negated [
	^ ENegation new expression: self
]
