Class {
	#name : #BabelDebuggerStatement,
	#superclass : #BabelStatement,
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelDebuggerStatement >> accept: aVisitor [
	aVisitor visitDebuggerStatement: self
]
