Class {
	#name : #BabelModuleSpecifier,
	#superclass : #BabelNode,
	#instVars : [
		'local'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelModuleSpecifier >> accept: aVisitor [
	aVisitor visitModuleSpecifier: self
]

{ #category : #'initialize-release' }
BabelModuleSpecifier >> initialize [
	super initialize.
	local := BabelIdentifier new.
	
]

{ #category : #accessing }
BabelModuleSpecifier >> local [
	^ local
]

{ #category : #accessing }
BabelModuleSpecifier >> local: anObject [
	local := anObject
]
