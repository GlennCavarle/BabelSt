Class {
	#name : #BabelLogicalExpression,
	#superclass : #BabelExpression,
	#instVars : [
		'operator',
		'left',
		'right'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelLogicalExpression >> accept: aVisitor [
	aVisitor visitLogicalExpression: self
]
