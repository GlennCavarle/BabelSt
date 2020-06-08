Class {
	#name : #BabelExportNamedDeclaration,
	#superclass : #BabelModuleDeclaration,
	#instVars : [
		'declaration',
		'specifiers',
		'source',
		'exportKind'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelExportNamedDeclaration >> accept: aVisitor [
	aVisitor visitExportNamedDeclaration: self
]

{ #category : #accessing }
BabelExportNamedDeclaration >> declaration [
	^ declaration
]

{ #category : #accessing }
BabelExportNamedDeclaration >> declaration: anObject [
	declaration := anObject
]

{ #category : #accessing }
BabelExportNamedDeclaration >> exportKind [
	^ exportKind
]

{ #category : #accessing }
BabelExportNamedDeclaration >> exportKind: anObject [
	exportKind := anObject
]

{ #category : #'initialize-release' }
BabelExportNamedDeclaration >> initialize [
	super initialize.
	specifiers := BabelObjectCollection new.
	exportKind := 'value'
]

{ #category : #accessing }
BabelExportNamedDeclaration >> source [
	^ source
]

{ #category : #accessing }
BabelExportNamedDeclaration >> source: anObject [
	source := anObject
]

{ #category : #accessing }
BabelExportNamedDeclaration >> specifiers [
	^ specifiers
]

{ #category : #accessing }
BabelExportNamedDeclaration >> specifiers: anObject [
	specifiers := anObject
]
