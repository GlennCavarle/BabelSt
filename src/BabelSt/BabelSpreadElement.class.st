Class {
	#name : #BabelSpreadElement,
	#superclass : #BabelNode,
	#instVars : [
		'argument'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelSpreadElement >> accept: aVisitor [
	aVisitor visitSpreadElement: self
]
