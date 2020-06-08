Class {
	#name : #BabelGenericTypeAnnotation,
	#superclass : #BabelObject,
	#instVars : [
		'id',
		'typeParameters'
	],
	#category : 'BabelSt-AST'
}

{ #category : #accessing }
BabelGenericTypeAnnotation >> id [
	^ id
]

{ #category : #accessing }
BabelGenericTypeAnnotation >> id: anObject [
	id := anObject
]

{ #category : #'initialize-release' }
BabelGenericTypeAnnotation >> initialize [
	super initialize.
	id := BabelIdentifier new
]

{ #category : #accessing }
BabelGenericTypeAnnotation >> typeParameters [
	^ typeParameters
]

{ #category : #accessing }
BabelGenericTypeAnnotation >> typeParameters: anObject [
	typeParameters := anObject
]
