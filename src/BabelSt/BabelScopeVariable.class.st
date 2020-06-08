Class {
	#name : #BabelScopeVariable,
	#superclass : #Object,
	#instVars : [
		'name',
		'type'
	],
	#category : 'BabelSt-Converter'
}

{ #category : #accessing }
BabelScopeVariable >> name [
	^ name
]

{ #category : #accessing }
BabelScopeVariable >> name: anObject [
	name := anObject
]

{ #category : #accessing }
BabelScopeVariable >> type [
	^ type
]

{ #category : #accessing }
BabelScopeVariable >> type: anObject [
	type := anObject
]
