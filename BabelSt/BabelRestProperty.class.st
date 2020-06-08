Class {
	#name : #BabelRestProperty,
	#superclass : #BabelNode,
	#instVars : [
		'argument'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelRestProperty >> accept: aVisitor [
	aVisitor visitRestProperty: self
]
