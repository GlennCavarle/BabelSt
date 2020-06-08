Class {
	#name : #BabelUpdateExpression,
	#superclass : #BabelExpression,
	#instVars : [
		'operator',
		'argument',
		'prefix'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelUpdateExpression >> accept: aVisitor [
	aVisitor visitUpdateExpression: self
]
