Class {
	#name : #BabelProgram,
	#superclass : #BabelNode,
	#instVars : [
		'sourceType',
		'body',
		'directives'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelProgram >> accept: aVisitor [
	aVisitor visitProgram: self
]

{ #category : #accessing }
BabelProgram >> body [
	^ body
]

{ #category : #accessing }
BabelProgram >> body: anObject [
	body := anObject
]

{ #category : #accessing }
BabelProgram >> directives [
	^ directives
]

{ #category : #accessing }
BabelProgram >> directives: anObject [
	directives := anObject
]

{ #category : #'initialize-release' }
BabelProgram >> initialize [
	super initialize.
	directives := BabelObjectCollection new.
	body := BabelObjectCollection new.
	sourceType:= 'module'
]

{ #category : #accessing }
BabelProgram >> sourceType [
	^ sourceType
]

{ #category : #accessing }
BabelProgram >> sourceType: anObject [
	sourceType := anObject
]
