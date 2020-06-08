Class {
	#name : #BabelModuleDeclaration,
	#superclass : #BabelNode,
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelModuleDeclaration >> accept: aVisitor [
	aVisitor visitModuleDeclaration: self
]
