Class {
	#name : 'NegatedVisitor',
	#superclass : 'Object',
	#category : 'Expressions-visitor',
	#package : 'Expressions-visitor'
}

{ #category : 'visiting' }
NegatedVisitor >> visitAddition: anAddition [ 
	| a |
	a := ENegation new expression: anAddition.
	^ a accept: EvalVisitor new
]

{ #category : 'visiting' }
NegatedVisitor >> visitConstant: aConstant [ 
	| n |
	n := ENegation new expression: aConstant.
	^ n accept: EvalVisitor new
]

{ #category : 'visiting' }
NegatedVisitor >> visitMultiplication: aMultiplication [ 
	| m |
	m := ENegation new expression: aMultiplication.
	^ m accept: EvalVisitor new
]

{ #category : 'visiting' }
NegatedVisitor >> visitNegation: aNegation [ 
	| n |
	n := ENegation new expression: aNegation.
	^ n accept: EvalVisitor new
]
