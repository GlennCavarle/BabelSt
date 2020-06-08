Class {
	#name : #BabelDeclaration,
	#superclass : #BabelStatement,
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelDeclaration >> accept: aVisitor [
	aVisitor visitDeclaration: self
]
