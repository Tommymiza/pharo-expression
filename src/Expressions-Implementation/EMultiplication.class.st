Class {
	#name : 'EMultiplication',
	#superclass : 'Object',
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

{ #category : 'accessing' }
EMultiplication class >> right: anExp [ 
	right:= anExp
]
