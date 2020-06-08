Class {
	#name : #BabelExpressionStatement,
	#superclass : #BabelStatement,
	#instVars : [
		'expression'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelExpressionStatement >> accept: aVisitor [
	aVisitor visitExpressionStatement: self
]

{ #category : #accessing }
BabelExpressionStatement >> expression [
	^ expression
]

{ #category : #accessing }
BabelExpressionStatement >> expression: anObject [
	expression := anObject
]

{ #category : #'initialize-release' }
BabelExpressionStatement >> initialize [
	super initialize.
	expression := BabelExpression new
]
