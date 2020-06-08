Class {
	#name : #BabelExportDefaultDeclaration,
	#superclass : #BabelModuleDeclaration,
	#instVars : [
		'declaration'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelExportDefaultDeclaration >> accept: aVisitor [
	aVisitor visitExportDefaultDeclaration: self
]
