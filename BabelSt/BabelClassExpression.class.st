Class {
	#name : #BabelClassExpression,
	#superclass : #BabelExpression,
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelClassExpression >> accept: aVisitor [
	aVisitor visitClassExpression: self
]
