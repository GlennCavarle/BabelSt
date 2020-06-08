Class {
	#name : #BabelStdMath,
	#superclass : #BabelStdClass,
	#category : 'BabelSt-StdClass'
}

{ #category : #'as yet unclassified' }
BabelStdMath class >> E [
	^ Float e
]

{ #category : #'as yet unclassified' }
BabelStdMath class >> PI [
	^ Float pi
]

{ #category : #'as yet unclassified' }
BabelStdMath class >> pow: x with:y [
 ^ x raisedTo: y
]
