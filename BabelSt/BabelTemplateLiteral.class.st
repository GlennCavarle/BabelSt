Class {
	#name : #BabelTemplateLiteral,
	#superclass : #BabelExpression,
	#instVars : [
		'quasis',
		'expressions'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelTemplateLiteral >> accept: aVisitor [
	aVisitor visitTemplateLiteral: self
]

{ #category : #accessing }
BabelTemplateLiteral >> expressions [
	^ expressions
]

{ #category : #accessing }
BabelTemplateLiteral >> expressions: anObject [
	expressions := anObject
]

{ #category : #'initialize-release' }
BabelTemplateLiteral >> initialize [
	super initialize.
	expressions := BabelObjectCollection new.
	quasis := BabelObjectCollection new
]

{ #category : #accessing }
BabelTemplateLiteral >> quasis [
	^ quasis
]

{ #category : #accessing }
BabelTemplateLiteral >> quasis: anObject [
	quasis := anObject
]
