Class {
	#name : #BabelExportSpecifier,
	#superclass : #BabelModuleSpecifier,
	#instVars : [
		'exported'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelExportSpecifier >> accept: aVisitor [
	aVisitor visitExportSpecifier: self
]
