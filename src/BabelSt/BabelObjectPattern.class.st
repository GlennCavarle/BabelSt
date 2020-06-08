Class {
	#name : #BabelObjectPattern,
	#superclass : #BabelPattern,
	#instVars : [
		'properties'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelObjectPattern >> accept: aVisitor [
	aVisitor visitObjectPattern: self
]
