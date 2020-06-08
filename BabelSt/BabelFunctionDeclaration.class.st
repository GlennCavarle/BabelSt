Class {
	#name : #BabelFunctionDeclaration,
	#superclass : #BabelDeclaration,
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
BabelFunctionDeclaration >> accept: aVisitor [
	aVisitor visitFunctionDeclaration: self
]

{ #category : #accessing }
BabelFunctionDeclaration >> async [
	^ async
]

{ #category : #accessing }
BabelFunctionDeclaration >> async: anObject [
	async := anObject
]

{ #category : #accessing }
BabelFunctionDeclaration >> body [
	^ body
]

{ #category : #accessing }
BabelFunctionDeclaration >> body: anObject [
	body := anObject
]

{ #category : #accessing }
BabelFunctionDeclaration >> generator [
	^ generator
]

{ #category : #accessing }
BabelFunctionDeclaration >> generator: anObject [
	generator := anObject
]

{ #category : #accessing }
BabelFunctionDeclaration >> id [
	^ id
]

{ #category : #accessing }
BabelFunctionDeclaration >> id: anObject [
	id := anObject
]

{ #category : #'initialize-release' }
BabelFunctionDeclaration >> initialize [
	super initialize.
	params := BabelObjectCollection new.
	body := BabelBlockStatement new.
	generator := false.
	async := false
]

{ #category : #accessing }
BabelFunctionDeclaration >> params [
	^ params
]

{ #category : #accessing }
BabelFunctionDeclaration >> params: anObject [
	params := anObject
]
