Class {
	#name : #BabelThrowStatement,
	#superclass : #BabelStatement,
	#instVars : [
		'argument'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelThrowStatement >> accept: aVisitor [
	aVisitor visitThrowStatement: self
]

{ #category : #accessing }
BabelThrowStatement >> argument [
	^ argument
]

{ #category : #accessing }
BabelThrowStatement >> argument: anObject [
	argument := anObject
]

{ #category : #'initialize-release' }
BabelThrowStatement >> initialize [
	super initialize.
	argument := BabelExpression new.
	
]
