"
https://github.com/babel/babel/blob/master/packages/babel-parser/ast/spec.md

interface Node {
  type: string;
  loc: SourceLocation | null;
}
"
Class {
	#name : #BabelNode,
	#superclass : #BabelObject,
	#instVars : [
		'loc',
		'comments'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelNode >> accept: aVisitor [
	aVisitor visitNode: self
]

{ #category : #accessing }
BabelNode >> comments [
	^ comments
]

{ #category : #accessing }
BabelNode >> comments: anObject [
	comments := anObject
]

{ #category : #'initialize-release' }
BabelNode >> initialize [
	super initialize.
	loc := BabelSourceLocation new.
	comments := BabelObjectCollection new
]

{ #category : #testing }
BabelNode >> isBabelASTNode [
	^ true
]

{ #category : #accessing }
BabelNode >> loc [
	^ loc
]

{ #category : #accessing }
BabelNode >> loc: anObject [
	loc := anObject
]
