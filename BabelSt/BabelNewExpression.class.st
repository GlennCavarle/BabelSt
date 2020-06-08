Class {
	#name : #BabelNewExpression,
	#superclass : #BabelCallExpression,
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelNewExpression >> accept: aVisitor [
	aVisitor visitNewExpression: self
]
