Class {
	#name : 'EvalVisitor',
	#superclass : 'Object',
	#category : 'Expressions-visitor',
	#package : 'Expressions-visitor'
}

{ #category : 'visiting' }
EvalVisitor >> visitAddition: anAddition [ 
	| l r |
	l := anAddition left accept: EvalVisitor new.
	r := anAddition right accept: EvalVisitor new.
	^ l + r
]

{ #category : 'visiting' }
EvalVisitor >> visitConstant: aConstant [

	^ aConstant value
]

{ #category : 'visiting' }
EvalVisitor >> visitMultiplication: aMultiplication [ 
	| l r |
	l := aMultiplication left accept: EvalVisitor new.
	r := aMultiplication right accept: EvalVisitor new.
	^ l * r
]

{ #category : 'visiting' }
EvalVisitor >> visitNegation: aNegation [

	^ (aNegation expression accept: EvalVisitor new) negated
]
