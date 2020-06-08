Class {
	#name : #BabelAssignmentPattern,
	#superclass : #BabelPattern,
	#instVars : [
		'left',
		'right'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelAssignmentPattern >> accept: aVisitor [
	aVisitor visitAssignmentPattern: self
]
