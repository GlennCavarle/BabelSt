Class {
	#name : #BabelBindExpression,
	#superclass : #BabelExpression,
	#instVars : [
		'object',
		'callee'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelBindExpression >> accept: aVisitor [
	aVisitor visitBindExpression: self
]
