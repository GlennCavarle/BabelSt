"
https://github.com/babel/babel/blob/master/doc/ast/spec.md#directiveliteral

interface DirectiveLiteral <: StringLiteral {
  type: ""DirectiveLiteral"";
}
"
Class {
	#name : #BabelDirectiveLiteral,
	#superclass : #BabelStringLiteral,
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelDirectiveLiteral >> accept: aVisitor [
	aVisitor visitDirectiveLiteral: self
]
