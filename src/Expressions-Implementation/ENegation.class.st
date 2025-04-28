Class {
	#name : 'ENegation',
	#superclass : 'Object',
	#instVars : [
		'expression'
	],
	#category : 'Expressions-Implementation',
	#package : 'Expressions-Implementation'
}

{ #category : 'public access' }
ENegation >> evaluate [

	^ (expression evaluate) negated
]

{ #category : 'instance creation' }
ENegation >> expression: anExpression [

	expression := anExpression
]
