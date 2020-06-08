Class {
	#name : #BabelMetaProperty,
	#superclass : #BabelExpression,
	#instVars : [
		'meta',
		'property'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelMetaProperty >> accept: aVisitor [
	aVisitor visitMetaProperty: self
]
