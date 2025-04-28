Class {
	#name : 'EConstant',
	#superclass : 'Object',
	#instVars : [
		'value'
	],
	#category : 'Expressions-Implementation',
	#package : 'Expressions-Implementation'
}

{ #category : 'public access' }
EConstant >> evaluate [
	^ value
]

{ #category : 'accessing' }
EConstant >> value: anInteger [ 
	value:= anInteger
]
