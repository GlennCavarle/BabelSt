Class {
	#name : #BabelImportDeclaration,
	#superclass : #BabelModuleDeclaration,
	#instVars : [
		'specifiers',
		'source',
		'importKind'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelImportDeclaration >> accept: aVisitor [
	aVisitor visitImportDeclaration: self
]

{ #category : #accessing }
BabelImportDeclaration >> importKind [
	^ importKind
]

{ #category : #accessing }
BabelImportDeclaration >> importKind: anObject [
	importKind := anObject
]

{ #category : #'initialize-release' }
BabelImportDeclaration >> initialize [
	super initialize.
	source := BabelStringLiteral new.
	specifiers := BabelObjectCollection new.
	importKind := 'value'
]

{ #category : #accessing }
BabelImportDeclaration >> source [
	^ source
]

{ #category : #accessing }
BabelImportDeclaration >> source: anObject [
	source := anObject
]

{ #category : #accessing }
BabelImportDeclaration >> specifiers [
	^ specifiers
]

{ #category : #accessing }
BabelImportDeclaration >> specifiers: anObject [
	specifiers := anObject
]
