"
https://github.com/babel/babel/blob/master/doc/ast/spec.md#stringliteral

interface StringLiteral <: Literal {
  type: ""StringLiteral"";
  value: string;
}
"
Class {
	#name : #BabelStringLiteral,
	#superclass : #BabelLiteral,
	#instVars : [
		'value'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelStringLiteral >> accept: aVisitor [
	aVisitor visitStringLiteral: self
]

{ #category : #accessing }
BabelStringLiteral >> value [
	^ value
]

{ #category : #accessing }
BabelStringLiteral >> value: anObject [
	value := anObject
]
