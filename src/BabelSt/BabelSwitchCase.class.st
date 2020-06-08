Class {
	#name : #BabelSwitchCase,
	#superclass : #BabelNode,
	#instVars : [
		'test',
		'consequent'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelSwitchCase >> accept: aVisitor [
	aVisitor visitSwitchCase: self
]
