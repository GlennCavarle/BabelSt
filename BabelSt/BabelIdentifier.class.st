"
https://github.com/babel/babel/blob/master/doc/ast/spec.md#node-objects

interface Identifier <: Expression, Pattern {
  type: ""Identifier"";
  name: string;
}
"
Class {
	#name : #BabelIdentifier,
	#superclass : #BabelObject,
	#instVars : [
		'name',
		'typeAnnotation'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelIdentifier >> accept: aVisitor [
	aVisitor visitIdentifier: self
]

{ #category : #accessing }
BabelIdentifier >> name [
	^ name
]

{ #category : #accessing }
BabelIdentifier >> name: anObject [
	name := anObject
]

{ #category : #accessing }
BabelIdentifier >> typeAnnotation [
	^ typeAnnotation
]

{ #category : #accessing }
BabelIdentifier >> typeAnnotation: anObject [
	typeAnnotation := anObject
]
