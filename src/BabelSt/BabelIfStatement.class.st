Class {
	#name : #BabelIfStatement,
	#superclass : #BabelStatement,
	#instVars : [
		'test',
		'consequent',
		'alternate'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelIfStatement >> accept: aVisitor [
	aVisitor visitIfStatement: self
]

{ #category : #accessing }
BabelIfStatement >> alternate [
	^ alternate
]

{ #category : #accessing }
BabelIfStatement >> alternate: anObject [
	alternate := anObject
]

{ #category : #accessing }
BabelIfStatement >> consequent [
	^ consequent
]

{ #category : #accessing }
BabelIfStatement >> consequent: anObject [
	consequent := anObject
]

{ #category : #'initialize-release' }
BabelIfStatement >> initialize [
	super initialize.
	test := BabelExpression new.
	consequent := BabelStatement new.
]

{ #category : #accessing }
BabelIfStatement >> test [
	^ test
]

{ #category : #accessing }
BabelIfStatement >> test: anObject [
	test := anObject
]
