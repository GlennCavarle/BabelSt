"
https://github.com/babel/babel/blob/master/doc/ast/spec.md#node-objects

interface Position {
  line: number; // >= 1
  column: number; // >= 0
}
"
Class {
	#name : #BabelPosition,
	#superclass : #BabelObject,
	#instVars : [
		'line',
		'column'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelPosition >> accept: aVisitor [
	aVisitor visitPosition: self
]

{ #category : #accessing }
BabelPosition >> column [
	^ column
]

{ #category : #accessing }
BabelPosition >> column: anObject [
	column := anObject
]

{ #category : #'initialize-release' }
BabelPosition >> initialize [
	super initialize.
]

{ #category : #accessing }
BabelPosition >> line [
	^ line
]

{ #category : #accessing }
BabelPosition >> line: anObject [
	line := anObject
]
