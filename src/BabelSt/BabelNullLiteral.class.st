"
https://github.com/babel/babel/blob/master/doc/ast/spec.md#nullliteral

interface NullLiteral <: Literal {
  type: ""NullLiteral"";
}
"
Class {
	#name : #BabelNullLiteral,
	#superclass : #BabelLiteral,
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelNullLiteral >> accept: aVisitor [
	aVisitor visitNullLiteral: self
]
