Class {
	#name : #BabelForStatement,
	#superclass : #BabelStatement,
	#instVars : [
		'init',
		'test',
		'update',
		'body'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelForStatement >> accept: aVisitor [
	aVisitor visitForStatement: self
]

{ #category : #accessing }
BabelForStatement >> body [
	^ body
]

{ #category : #accessing }
BabelForStatement >> body: anObject [
	body := anObject
]

{ #category : #accessing }
BabelForStatement >> init [
	^ init
]

{ #category : #accessing }
BabelForStatement >> init: anObject [
	init := anObject
]

{ #category : #'initialize-release' }
BabelForStatement >> initialize [
	super initialize.
	body := BabelStatement new.
]

{ #category : #accessing }
BabelForStatement >> test [
	^ test
]

{ #category : #accessing }
BabelForStatement >> test: anObject [
	test := anObject
]

{ #category : #accessing }
BabelForStatement >> update [
	^ update
]

{ #category : #accessing }
BabelForStatement >> update: anObject [
	update := anObject
]
