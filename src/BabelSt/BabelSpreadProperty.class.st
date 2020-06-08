Class {
	#name : #BabelSpreadProperty,
	#superclass : #BabelNode,
	#instVars : [
		'argument'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelSpreadProperty >> accept: aVisitor [
	aVisitor visitSpreadProperty: self
]
