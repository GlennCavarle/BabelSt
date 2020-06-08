"
https://github.com/babel/babel/blob/master/doc/ast/spec.md#classbody

interface ClassBody <: Node {
  type: ""ClassBody"";
  body: [ ClassMethod | ClassProperty ];
}
"
Class {
	#name : #BabelClassBody,
	#superclass : #BabelNode,
	#instVars : [
		'body'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelClassBody >> accept: aVisitor [
	aVisitor visitClassBody: self
]

{ #category : #accessing }
BabelClassBody >> body [
	^ body
]

{ #category : #accessing }
BabelClassBody >> body: anObject [
	body := anObject
]

{ #category : #'initialize-release' }
BabelClassBody >> initialize [
	super initialize.
	body := BabelObjectCollection new.
]
