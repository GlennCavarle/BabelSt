"
https://github.com/babel/babel/blob/master/doc/ast/spec.md#booleanliteral

interface BooleanLiteral <: Literal {
  type: ""BooleanLiteral"";
  value: boolean;
}
"
Class {
	#name : #BabelBooleanLiteral,
	#superclass : #BabelLiteral,
	#instVars : [
		'value'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelBooleanLiteral >> accept: aVisitor [
	aVisitor visitBooleanLiteral: self
]

{ #category : #accessing }
BabelBooleanLiteral >> value [
	^ value
]

{ #category : #accessing }
BabelBooleanLiteral >> value: anObject [
	value := anObject
]
