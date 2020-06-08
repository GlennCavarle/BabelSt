Class {
	#name : #BabelImportDefaultSpecifier,
	#superclass : #BabelModuleSpecifier,
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelImportDefaultSpecifier >> accept: aVisitor [
	aVisitor visitImportDefaultSpecifier: self
]
