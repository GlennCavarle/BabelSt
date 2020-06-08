"
https://github.com/babel/babel/blob/master/doc/ast/spec.md#catchclause

interface CatchClause <: Node {
  type: ""CatchClause"";
  param: Pattern;
  body: BlockStatement;
}
"
Class {
	#name : #BabelCatchClause,
	#superclass : #BabelNode,
	#instVars : [
		'param',
		'body'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelCatchClause >> accept: aVisitor [
	aVisitor visitCatchClause: self
]

{ #category : #accessing }
BabelCatchClause >> body [
	^ body
]

{ #category : #accessing }
BabelCatchClause >> body: anObject [
	body := anObject
]

{ #category : #'initialize-release' }
BabelCatchClause >> initialize [
	super initialize.
	param := BabelPattern new.
	body := BabelBlockStatement new
]

{ #category : #accessing }
BabelCatchClause >> param [
	^ param
]

{ #category : #accessing }
BabelCatchClause >> param: anObject [
	param := anObject
]
