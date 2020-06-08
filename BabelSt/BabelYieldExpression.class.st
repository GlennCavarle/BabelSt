Class {
	#name : #BabelYieldExpression,
	#superclass : #BabelExpression,
	#instVars : [
		'argument',
		'delegate'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelYieldExpression >> accept: aVisitor [
	aVisitor visitYieldExpression: self
]
