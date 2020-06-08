Class {
	#name : #BabelImportSpecifier,
	#superclass : #BabelModuleSpecifier,
	#instVars : [
		'imported'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelImportSpecifier >> accept: aVisitor [
	aVisitor visitImportSpecifier: self
]

{ #category : #accessing }
BabelImportSpecifier >> imported [
	^ imported
]

{ #category : #accessing }
BabelImportSpecifier >> imported: anObject [
	imported := anObject
]

{ #category : #'initialize-release' }
BabelImportSpecifier >> initialize [
	super initialize.
	imported := BabelIdentifier new.
	
]
