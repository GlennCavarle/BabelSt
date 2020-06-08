Class {
	#name : #BabelTestObject,
	#superclass : #Object,
	#instVars : [
		'test'
	],
	#category : 'BabelSt-Test-Converter'
}

{ #category : #accessing }
BabelTestObject >> barMethod: aTest [
	Object test: aTest
]

{ #category : #accessing }
BabelTestObject >> fooMethod: aTest [
	self other test: aTest
]

{ #category : #accessing }
BabelTestObject >> ifMethod: aTest [
	((self other + 4) = 10) ifTrue: [ ^ self test ] ifFalse:[^ self other]
]

{ #category : #accessing }
BabelTestObject >> otherMethod [
	^ test 
]

{ #category : #accessing }
BabelTestObject >> otherMethod: aTest [
	self test: aTest
]

{ #category : #accessing }
BabelTestObject >> test [
	^ test
]

{ #category : #accessing }
BabelTestObject >> test: anObject [
	test := anObject
]
