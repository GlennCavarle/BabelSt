Class {
	#name : #BabelMemberExpression,
	#superclass : #BabelExpression,
	#instVars : [
		'object',
		'property',
		'computed'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelMemberExpression >> accept: aVisitor [
	aVisitor visitMemberExpression: self
]

{ #category : #accessing }
BabelMemberExpression >> computed [
	^ computed
]

{ #category : #accessing }
BabelMemberExpression >> computed: anObject [
	computed := anObject
]

{ #category : #'initialize-release' }
BabelMemberExpression >> initialize [
	super initialize.
	computed := false.
	property := BabelIdentifier new.
]

{ #category : #accessing }
BabelMemberExpression >> object [
	^ object
]

{ #category : #accessing }
BabelMemberExpression >> object: anObject [
	object := anObject
]

{ #category : #accessing }
BabelMemberExpression >> property [
	^ property
]

{ #category : #accessing }
BabelMemberExpression >> property: anObject [
	property := anObject
]
