Class {
	#name : #BabelWhileStatement,
	#superclass : #BabelStatement,
	#instVars : [
		'test',
		'body'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelWhileStatement >> accept: aVisitor [
	aVisitor visitWhileStatement: self
]

{ #category : #accessing }
BabelWhileStatement >> body [
	^ body
]

{ #category : #accessing }
BabelWhileStatement >> body: anObject [
	body := anObject
]

{ #category : #'initialize-release' }
BabelWhileStatement >> initialize [
	super initialize.
	test := BabelExpression new.
	body := BabelStatement new
]

{ #category : #accessing }
BabelWhileStatement >> test [
	^ test
]

{ #category : #accessing }
BabelWhileStatement >> test: anObject [
	test := anObject
]
