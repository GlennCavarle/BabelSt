Class {
	#name : #BabelWithStatement,
	#superclass : #BabelStatement,
	#instVars : [
		'object',
		'body'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelWithStatement >> accept: aVisitor [
	aVisitor visitWithStatement: self
]

{ #category : #accessing }
BabelWithStatement >> body [
	^ body
]

{ #category : #accessing }
BabelWithStatement >> body: anObject [
	body := anObject
]

{ #category : #'initialize-release' }
BabelWithStatement >> initialize [
	super initialize.
	object := BabelExpression new.
	body := BabelStatement new
]

{ #category : #accessing }
BabelWithStatement >> object [
	^ object
]

{ #category : #accessing }
BabelWithStatement >> object: anObject [
	object := anObject
]
