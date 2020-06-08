Class {
	#name : #BabelSequenceExpression,
	#superclass : #BabelExpression,
	#instVars : [
		'expressions'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelSequenceExpression >> accept: aVisitor [
	aVisitor visitSequenceExpression: self
]
