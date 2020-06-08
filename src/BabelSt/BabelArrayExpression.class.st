Class {
	#name : #BabelArrayExpression,
	#superclass : #BabelExpression,
	#instVars : [
		'elements'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelArrayExpression >> accept: aVisitor [
	aVisitor visitArrayExpression: self
]

{ #category : #accessing }
BabelArrayExpression >> elements [
	^ elements
]

{ #category : #accessing }
BabelArrayExpression >> elements: anObject [
	elements := anObject
]

{ #category : #'initialize-release' }
BabelArrayExpression >> initialize [
	super initialize.
	elements := BabelObjectCollection new.
	
]
