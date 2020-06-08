"
https://github.com/babel/babel/blob/master/doc/ast/spec.md#numericliteral

interface NumericLiteral <: Literal {
  type: ""NumericLiteral"";
  value: number;
}
"
Class {
	#name : #BabelNumericLiteral,
	#superclass : #BabelLiteral,
	#instVars : [
		'value'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelNumericLiteral >> accept: aVisitor [
	aVisitor visitNumericLiteral: self
]

{ #category : #accessing }
BabelNumericLiteral >> value [
	^ value
]

{ #category : #accessing }
BabelNumericLiteral >> value: anObject [
	value := anObject
]
