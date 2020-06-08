"
https://github.com/babel/babel/blob/master/doc/ast/spec.md#literals

interface Literal <: Expression { }
"
Class {
	#name : #BabelSourceLocation,
	#superclass : #BabelObject,
	#instVars : [
		'source',
		'start',
		'end'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelSourceLocation >> accept: aVisitor [
	aVisitor visitSourceLocation: self
]

{ #category : #accessing }
BabelSourceLocation >> end [
	^ end
]

{ #category : #accessing }
BabelSourceLocation >> end: anObject [
	end := anObject
]

{ #category : #'initialize-release' }
BabelSourceLocation >> initialize [
	super initialize.
	start := BabelPosition new.
	end := BabelPosition new.
	
]

{ #category : #accessing }
BabelSourceLocation >> source [
	^ source
]

{ #category : #accessing }
BabelSourceLocation >> source: anObject [
	source := anObject
]

{ #category : #accessing }
BabelSourceLocation >> start [
	^ start
]

{ #category : #accessing }
BabelSourceLocation >> start: anObject [
	start := anObject
]
