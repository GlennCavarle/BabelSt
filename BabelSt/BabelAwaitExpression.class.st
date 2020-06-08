Class {
	#name : #BabelAwaitExpression,
	#superclass : #BabelExpression,
	#instVars : [
		'argument'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelAwaitExpression >> accept: aVisitor [
	aVisitor visitAwaitExpression: self
]
