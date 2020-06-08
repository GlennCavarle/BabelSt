Class {
	#name : #BabelFunctionExtra,
	#superclass : #BabelObject,
	#instVars : [
		'parenthesized'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelFunctionExtra >> accept: aVisitor [
	aVisitor visitExtra: self
]

{ #category : #'initialize-release' }
BabelFunctionExtra >> initialize [
	super initialize.
	parenthesized  := false.
	
]

{ #category : #accessing }
BabelFunctionExtra >> parenthesized [
	^ parenthesized
]

{ #category : #accessing }
BabelFunctionExtra >> parenthesized: anObject [
	parenthesized := anObject
]
