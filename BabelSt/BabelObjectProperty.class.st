Class {
	#name : #BabelObjectProperty,
	#superclass : #BabelObjectMember,
	#instVars : [
		'shorthand'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelObjectProperty >> accept: aVisitor [
	aVisitor visitObjectProperty: self
]

{ #category : #'initialize-release' }
BabelObjectProperty >> initialize [
	super initialize.
	shorthand := false
]
