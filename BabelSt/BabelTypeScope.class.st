Class {
	#name : #BabelTypeScope,
	#superclass : #Object,
	#instVars : [
		'parent',
		'children',
		'variables'
	],
	#category : 'BabelSt-Converter'
}

{ #category : #accessing }
BabelTypeScope >> children [
	^ children
]

{ #category : #accessing }
BabelTypeScope >> children: anObject [
	children := anObject
]

{ #category : #'as yet unclassified' }
BabelTypeScope >> initialize [
	super initialize .
	children := OrderedCollection new.
	variables :=Dictionary new
]

{ #category : #accessing }
BabelTypeScope >> parent [
	^ parent
]

{ #category : #accessing }
BabelTypeScope >> parent: anObject [
	parent := anObject
]

{ #category : #accessing }
BabelTypeScope >> variables [
	^ variables
]

{ #category : #accessing }
BabelTypeScope >> variables: anObject [
	variables := anObject
]
