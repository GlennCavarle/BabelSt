Class {
	#name : #BabelFunction,
	#superclass : #BabelNode,
	#instVars : [
		'id',
		'params',
		'body',
		'generator',
		'async'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelFunction >> accept: aVisitor [
	aVisitor visitFunction: self
]

{ #category : #accessing }
BabelFunction >> async [
	^ async
]

{ #category : #accessing }
BabelFunction >> async: anObject [
	async := anObject
]

{ #category : #accessing }
BabelFunction >> body [
	^ body
]

{ #category : #accessing }
BabelFunction >> body: anObject [
	body := anObject
]

{ #category : #accessing }
BabelFunction >> generator [
	^ generator
]

{ #category : #accessing }
BabelFunction >> generator: anObject [
	generator := anObject
]

{ #category : #accessing }
BabelFunction >> id [
	^ id
]

{ #category : #accessing }
BabelFunction >> id: anObject [
	id := anObject
]

{ #category : #'initialize-release' }
BabelFunction >> initialize [
	super initialize.
	params := BabelObjectCollection new.
	body := BabelBlockStatement new.
	generator := false.
	async := false
]

{ #category : #accessing }
BabelFunction >> params [
	^ params
]

{ #category : #accessing }
BabelFunction >> params: anObject [
	params := anObject
]
