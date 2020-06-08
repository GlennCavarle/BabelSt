Class {
	#name : #BabelTryStatement,
	#superclass : #BabelStatement,
	#instVars : [
		'block',
		'handler',
		'finalizer'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelTryStatement >> accept: aVisitor [
	aVisitor visitTryStatement: self
]

{ #category : #accessing }
BabelTryStatement >> block [
	^ block
]

{ #category : #accessing }
BabelTryStatement >> block: anObject [
	block := anObject
]

{ #category : #accessing }
BabelTryStatement >> finalizer [
	^ finalizer
]

{ #category : #accessing }
BabelTryStatement >> finalizer: anObject [
	finalizer := anObject
]

{ #category : #accessing }
BabelTryStatement >> handler [
	^ handler
]

{ #category : #accessing }
BabelTryStatement >> handler: anObject [
	handler := anObject
]

{ #category : #'initialize-release' }
BabelTryStatement >> initialize [
	super initialize.
	block := BabelBlockStatement new.
	handler := BabelCatchClause new.
	finalizer := BabelBlockStatement new
]
