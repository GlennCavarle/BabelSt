Class {
	#name : #BabelEmptyStatement,
	#superclass : #BabelStatement,
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelEmptyStatement >> accept: aVisitor [
	aVisitor visitEmptyStatement: self
]
