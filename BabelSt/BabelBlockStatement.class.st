Class {
	#name : #BabelBlockStatement,
	#superclass : #BabelStatement,
	#instVars : [
		'body',
		'directives'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelBlockStatement >> accept: aVisitor [
	aVisitor visitBlockStatement: self
]

{ #category : #accessing }
BabelBlockStatement >> body [
	^ body
]

{ #category : #accessing }
BabelBlockStatement >> body: anObject [
	body := anObject
]

{ #category : #accessing }
BabelBlockStatement >> directives [
	^ directives
]

{ #category : #accessing }
BabelBlockStatement >> directives: anObject [
	directives := anObject
]

{ #category : #'initialize-release' }
BabelBlockStatement >> initialize [
	super initialize.
	body := BabelObjectCollection new.
	directives := BabelObjectCollection new
	
]
