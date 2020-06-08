Class {
	#name : #BabelExportAllDeclaration,
	#superclass : #BabelModuleDeclaration,
	#instVars : [
		'source'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelExportAllDeclaration >> accept: aVisitor [
	aVisitor visitExportAllDeclaration: self
]
