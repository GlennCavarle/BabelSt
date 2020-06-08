Class {
	#name : #BabelBreakStatement,
	#superclass : #BabelStatement,
	#instVars : [
		'label'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelBreakStatement >> accept: aVisitor [
	aVisitor visitBreakStatement: self
]

{ #category : #'initialize-release' }
BabelBreakStatement >> initialize [
	super initialize.
	label := BabelIdentifier new.
	
]

{ #category : #accessing }
BabelBreakStatement >> label [
	^ label
]

{ #category : #accessing }
BabelBreakStatement >> label: anObject [
	label := anObject
]
