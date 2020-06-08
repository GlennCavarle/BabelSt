Class {
	#name : #BabelSuper,
	#superclass : #BabelNode,
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelSuper >> accept: aVisitor [
	aVisitor visitSuper: self
]
