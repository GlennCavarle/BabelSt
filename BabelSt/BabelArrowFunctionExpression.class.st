Class {
	#name : #BabelArrowFunctionExpression,
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
BabelArrowFunctionExpression >> accept: aVisitor [
	aVisitor visitArrowFunctionExpression: self
]

{ #category : #accessing }
BabelArrowFunctionExpression >> async [
	^ async
]

{ #category : #accessing }
BabelArrowFunctionExpression >> async: anObject [
	async := anObject
]

{ #category : #accessing }
BabelArrowFunctionExpression >> body [
	^ body
]

{ #category : #accessing }
BabelArrowFunctionExpression >> body: anObject [
	body := anObject
]

{ #category : #accessing }
BabelArrowFunctionExpression >> expression [
	^ expression
]

{ #category : #accessing }
BabelArrowFunctionExpression >> expression: anObject [
	expression := anObject
]

{ #category : #accessing }
BabelArrowFunctionExpression >> extra [
	^ extra
]

{ #category : #accessing }
BabelArrowFunctionExpression >> extra: anObject [
	extra := anObject
]

{ #category : #accessing }
BabelArrowFunctionExpression >> generator [
	^ generator
]

{ #category : #accessing }
BabelArrowFunctionExpression >> generator: anObject [
	generator := anObject
]

{ #category : #accessing }
BabelArrowFunctionExpression >> id [
	^ id
]

{ #category : #accessing }
BabelArrowFunctionExpression >> id: anObject [
	id := anObject
]

{ #category : #'initialize-release' }
BabelArrowFunctionExpression >> initialize [
	super initialize.
	expression := false.
	generator := false.
	async := false.
	body := BabelBlockStatement new.
	params := BabelObjectCollection new.
	extra := BabelFunctionExtra new
]

{ #category : #accessing }
BabelArrowFunctionExpression >> params [
	^ params
]

{ #category : #accessing }
BabelArrowFunctionExpression >> params: anObject [
	params := anObject
]
