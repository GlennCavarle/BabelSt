Class {
	#name : #BabelRestElement,
	#superclass : #BabelPattern,
	#instVars : [
		'argument'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelRestElement >> accept: aVisitor [
	aVisitor visitRestElement: self
]
