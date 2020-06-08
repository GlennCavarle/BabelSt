Class {
	#name : #BabelForOfStatement,
	#superclass : #BabelForInStatement,
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelForOfStatement >> accept: aVisitor [
	aVisitor visitForOfStatement: self
]
