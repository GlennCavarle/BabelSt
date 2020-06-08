Class {
	#name : #BabelObjectExpression,
	#superclass : #BabelExpression,
	#instVars : [
		'properties'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelObjectExpression >> accept: aVisitor [
	aVisitor visitObjectExpression: self
]

{ #category : #'initialize-release' }
BabelObjectExpression >> initialize [
	super initialize.
	properties := BabelObjectCollection new
]

{ #category : #accessing }
BabelObjectExpression >> properties [
	^ properties
]

{ #category : #accessing }
BabelObjectExpression >> properties: anObject [
	properties := anObject
]
