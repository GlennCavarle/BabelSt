Class {
	#name : #BabelTaggedTemplateExpression,
	#superclass : #BabelExpression,
	#instVars : [
		'tag',
		'quasi'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelTaggedTemplateExpression >> accept: aVisitor [
	aVisitor visitTaggedTemplateExpression: self
]
