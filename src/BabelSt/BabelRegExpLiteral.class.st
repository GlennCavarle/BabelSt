"
https://github.com/babel/babel/blob/master/doc/ast/spec.md#regexpliteral

interface RegExpLiteral <: Literal {
  type: ""RegExpLiteral"";
  pattern: string;
  flags: string;
}
"
Class {
	#name : #BabelRegExpLiteral,
	#superclass : #BabelLiteral,
	#instVars : [
		'pattern',
		'flag'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelRegExpLiteral >> accept: aVisitor [
	aVisitor visitRegExpLiteral: self
]

{ #category : #accessing }
BabelRegExpLiteral >> flag [
	^ flag
]

{ #category : #accessing }
BabelRegExpLiteral >> flag: anObject [
	flag := anObject
]

{ #category : #accessing }
BabelRegExpLiteral >> pattern [
	^ pattern
]

{ #category : #accessing }
BabelRegExpLiteral >> pattern: anObject [
	pattern := anObject
]
