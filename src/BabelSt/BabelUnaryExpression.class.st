Class {
	#name : #BabelUnaryExpression,
	#superclass : #BabelExpression,
	#instVars : [
		'operator',
		'prefix',
		'argument'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelUnaryExpression >> accept: aVisitor [
	aVisitor visitUnaryExpression: self
]
