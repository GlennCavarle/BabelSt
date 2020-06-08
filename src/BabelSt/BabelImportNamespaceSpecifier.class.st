Class {
	#name : #BabelImportNamespaceSpecifier,
	#superclass : #BabelModuleSpecifier,
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelImportNamespaceSpecifier >> accept: aVisitor [
	aVisitor visitImportNamespaceSpecifier: self
]
