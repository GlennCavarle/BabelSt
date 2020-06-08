Class {
	#name : #BabelStatement,
	#superclass : #BabelNode,
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelStatement >> accept: aVisitor [
	aVisitor visitStatement: self
]
