Class {
	#name : #BabelObjectMember,
	#superclass : #BabelNode,
	#instVars : [
		'key',
		'computed',
		'value',
		'decorators'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelObjectMember >> accept: aVisitor [
	aVisitor visitObjectMember: self
]

{ #category : #accessing }
BabelObjectMember >> computed [
	^ computed
]

{ #category : #accessing }
BabelObjectMember >> computed: anObject [
	computed := anObject
]

{ #category : #accessing }
BabelObjectMember >> decorators [
	^ decorators
]

{ #category : #accessing }
BabelObjectMember >> decorators: anObject [
	decorators := anObject
]

{ #category : #'initialize-release' }
BabelObjectMember >> initialize [
	super initialize.
	computed := false.
	decorators  := BabelObjectCollection new.
]

{ #category : #accessing }
BabelObjectMember >> key [
	^ key
]

{ #category : #accessing }
BabelObjectMember >> key: anObject [
	key := anObject
]

{ #category : #accessing }
BabelObjectMember >> value [
	^ value
]

{ #category : #accessing }
BabelObjectMember >> value: anObject [
	value := anObject
]
