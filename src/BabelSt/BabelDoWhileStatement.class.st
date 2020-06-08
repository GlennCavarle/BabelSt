Class {
	#name : #BabelDoWhileStatement,
	#superclass : #BabelStatement,
	#instVars : [
		'body',
		'test'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelDoWhileStatement >> accept: aVisitor [
	aVisitor visitDoWhileStatement: self
]

{ #category : #'initialize-release' }
BabelDoWhileStatement >> initialize [
	super initialize.
	test := BabelExpression new.
	body := BabelStatement new
]
