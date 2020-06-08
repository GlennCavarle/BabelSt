Class {
	#name : #BabelReturnStatement,
	#superclass : #BabelStatement,
	#instVars : [
		'argument'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelReturnStatement >> accept: aVisitor [
	aVisitor visitReturnStatement: self
]

{ #category : #accessing }
BabelReturnStatement >> argument [
	^ argument
]

{ #category : #accessing }
BabelReturnStatement >> argument: anObject [
	argument := anObject
]

{ #category : #'initialize-release' }
BabelReturnStatement >> initialize [
	super initialize.
	
]
