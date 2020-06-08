Class {
	#name : #BabelCallExpression,
	#superclass : #BabelExpression,
	#instVars : [
		'callee',
		'arguments'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelCallExpression >> accept: aVisitor [
	aVisitor visitCallExpression: self
]

{ #category : #accessing }
BabelCallExpression >> arguments [
	^ arguments
]

{ #category : #accessing }
BabelCallExpression >> arguments: anObject [
	arguments := anObject
]

{ #category : #accessing }
BabelCallExpression >> callee [
	^ callee
]

{ #category : #accessing }
BabelCallExpression >> callee: anObject [
	callee := anObject
]

{ #category : #'initialize-release' }
BabelCallExpression >> initialize [
	super initialize.
	arguments := BabelObjectCollection new
]
