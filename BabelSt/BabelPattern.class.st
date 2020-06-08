Class {
	#name : #BabelPattern,
	#superclass : #BabelNode,
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelPattern >> accept: aVisitor [
	aVisitor visitPattern: self
]
