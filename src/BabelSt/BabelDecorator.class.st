Class {
	#name : #BabelDecorator,
	#superclass : #BabelNode,
	#instVars : [
		'expression'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelDecorator >> accept: aVisitor [
	aVisitor visitDecorator: self
]

{ #category : #accessing }
BabelDecorator >> expression [
	^ expression
]

{ #category : #accessing }
BabelDecorator >> expression: anObject [
	expression := anObject
]

{ #category : #'initialize-release' }
BabelDecorator >> initialize [
	super initialize.
	expression := BabelExpression new.
	
]
