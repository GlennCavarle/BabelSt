Class {
	#name : #BabelArrayPattern,
	#superclass : #BabelPattern,
	#instVars : [
		'elements'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelArrayPattern >> accept: aVisitor [
	aVisitor visitArrayPattern: self
]
