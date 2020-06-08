Class {
	#name : #BabelVariableDeclarator,
	#superclass : #BabelNode,
	#instVars : [
		'id',
		'init'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelVariableDeclarator >> accept: aVisitor [
	aVisitor visitVariableDeclarator: self
]

{ #category : #accessing }
BabelVariableDeclarator >> id [
	^ id
]

{ #category : #accessing }
BabelVariableDeclarator >> id: anObject [
	id := anObject
]

{ #category : #accessing }
BabelVariableDeclarator >> init [
	^ init
]

{ #category : #accessing }
BabelVariableDeclarator >> init: anObject [
	init := anObject
]

{ #category : #'initialize-release' }
BabelVariableDeclarator >> initialize [
	super initialize.
	id := BabelIdentifier new.
]
