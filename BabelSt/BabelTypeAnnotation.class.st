Class {
	#name : #BabelTypeAnnotation,
	#superclass : #BabelObject,
	#instVars : [
		'typeAnnotation'
	],
	#category : 'BabelSt-AST'
}

{ #category : #'initialize-release' }
BabelTypeAnnotation >> initialize [
	super initialize.
	typeAnnotation := BabelGenericTypeAnnotation new
]

{ #category : #accessing }
BabelTypeAnnotation >> typeAnnotation [
	^ typeAnnotation
]

{ #category : #accessing }
BabelTypeAnnotation >> typeAnnotation: anObject [
	typeAnnotation := anObject
]
