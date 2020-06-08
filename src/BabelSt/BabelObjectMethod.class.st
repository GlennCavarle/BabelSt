Class {
	#name : #BabelObjectMethod,
	#superclass : #BabelObjectMember,
	#instVars : [
		'kind'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelObjectMethod >> accept: aVisitor [
	aVisitor visitObjectMethod: self
]
