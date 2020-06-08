Class {
	#name : #BabelDummyContext,
	#superclass : #Object,
	#instVars : [
		'currentClass',
		'currentProperty',
		'currentMethod',
		'currentReceiver'
	],
	#category : 'BabelSt-Converter'
}

{ #category : #accessing }
BabelDummyContext >> currentClass [
	^ currentClass
]

{ #category : #accessing }
BabelDummyContext >> currentClass: anObject [
	currentClass := anObject
]

{ #category : #accessing }
BabelDummyContext >> currentMethod [
	^ currentMethod
]

{ #category : #accessing }
BabelDummyContext >> currentMethod: anObject [
	currentMethod := anObject
]

{ #category : #accessing }
BabelDummyContext >> currentProperty [
	^ currentProperty
]

{ #category : #accessing }
BabelDummyContext >> currentProperty: anObject [
	currentProperty := anObject
]

{ #category : #accessing }
BabelDummyContext >> currentReceiver [
	^ currentReceiver
]

{ #category : #accessing }
BabelDummyContext >> currentReceiver: anObject [
	currentReceiver := anObject
]

{ #category : #'as yet unclassified' }
BabelDummyContext >> isAccessor: aSelector [
	^ false
]

{ #category : #'as yet unclassified' }
BabelDummyContext >> isGetterAccessor: aSelector [
	^ false
]

{ #category : #'as yet unclassified' }
BabelDummyContext >> isSetterAccessor: aSelector [
	^ false
]
