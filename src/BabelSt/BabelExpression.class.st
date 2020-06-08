Class {
	#name : #BabelExpression,
	#superclass : #BabelNode,
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelExpression >> accept: aVisitor [
	aVisitor visitExpression: self
]
