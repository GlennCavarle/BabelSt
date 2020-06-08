Class {
	#name : #BabelContinueStatement,
	#superclass : #BabelStatement,
	#instVars : [
		'label'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelContinueStatement >> accept: aVisitor [
	aVisitor visitContinueStatement: self
]

{ #category : #'initialize-release' }
BabelContinueStatement >> initialize [
	super initialize.
	label := BabelIdentifier new.
	
]

{ #category : #accessing }
BabelContinueStatement >> label [
	^ label
]

{ #category : #accessing }
BabelContinueStatement >> label: anObject [
	label := anObject
]
