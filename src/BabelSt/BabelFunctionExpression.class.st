Class {
	#name : #BabelFunctionExpression,
	#superclass : #BabelExpression,
	#instVars : [
		'id',
		'params',
		'body',
		'generator',
		'async',
		'expression',
		'extra'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelFunctionExpression >> accept: aVisitor [
	aVisitor visitFunctionExpression: self
]

{ #category : #accessing }
BabelFunctionExpression >> async [
	^ async
]

{ #category : #accessing }
BabelFunctionExpression >> async: anObject [
	async := anObject
]

{ #category : #accessing }
BabelFunctionExpression >> body [
	^ body
]

{ #category : #accessing }
BabelFunctionExpression >> body: anObject [
	body := anObject
]

{ #category : #accessing }
BabelFunctionExpression >> expression [
	^ expression
]

{ #category : #accessing }
BabelFunctionExpression >> expression: anObject [
	expression := anObject
]

{ #category : #accessing }
BabelFunctionExpression >> extra [
	^ extra
]

{ #category : #accessing }
BabelFunctionExpression >> extra: anObject [
	extra := anObject
]

{ #category : #accessing }
BabelFunctionExpression >> generator [
	^ generator
]

{ #category : #accessing }
BabelFunctionExpression >> generator: anObject [
	generator := anObject
]

{ #category : #accessing }
BabelFunctionExpression >> id [
	^ id
]

{ #category : #accessing }
BabelFunctionExpression >> id: anObject [
	id := anObject
]

{ #category : #'initialize-release' }
BabelFunctionExpression >> initialize [
	super initialize.
	expression := false.
	generator := false.
	async := false.
	body := BabelBlockStatement new.
	params := BabelObjectCollection new.
	extra := BabelFunctionExtra new
]

{ #category : #accessing }
BabelFunctionExpression >> params [
	^ params
]

{ #category : #accessing }
BabelFunctionExpression >> params: anObject [
	params := anObject
]
