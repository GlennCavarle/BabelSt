Class {
	#name : #BabelThisExpression,
	#superclass : #BabelExpression,
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelThisExpression >> accept: aVisitor [
	aVisitor visitThisExpression: self
]
