Class {
	#name : #BabelConditionalExpression,
	#superclass : #BabelExpression,
	#instVars : [
		'test',
		'alternate',
		'consequent'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelConditionalExpression >> accept: aVisitor [
	aVisitor visitConditionalExpression: self
]
