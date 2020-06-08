Class {
	#name : #BabelTemplateElementValue,
	#superclass : #BabelNode,
	#instVars : [
		'raw',
		'cooked'
	],
	#category : 'BabelSt-AST'
}

{ #category : #accessing }
BabelTemplateElementValue >> cooked [
	^ cooked
]

{ #category : #accessing }
BabelTemplateElementValue >> cooked: anObject [
	cooked := anObject
]

{ #category : #accessing }
BabelTemplateElementValue >> raw [
	^ raw
]

{ #category : #accessing }
BabelTemplateElementValue >> raw: anObject [
	raw := anObject
]
