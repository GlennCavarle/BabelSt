"
https://github.com/babel/babel/blob/master/doc/ast/spec.md#literals

interface Literal <: Expression { }
"
Class {
	#name : #BabelLiteral,
	#superclass : #BabelObject,
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelLiteral >> accept: aVisitor [
	aVisitor visitLiteral: self
]
