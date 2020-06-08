Class {
	#name : #BabelBinaryExpression,
	#superclass : #BabelExpression,
	#instVars : [
		'operator',
		'left',
		'right'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelBinaryExpression >> accept: aVisitor [
	aVisitor visitBinaryExpression: self
]

{ #category : #accessing }
BabelBinaryExpression >> left [
	^ left
]

{ #category : #accessing }
BabelBinaryExpression >> left: anObject [
	left := anObject
]

{ #category : #accessing }
BabelBinaryExpression >> operator [
	^ operator
]

{ #category : #accessing }
BabelBinaryExpression >> operator: anObject [
	operator := anObject
]

{ #category : #accessing }
BabelBinaryExpression >> right [
	^ right
]

{ #category : #accessing }
BabelBinaryExpression >> right: anObject [
	right := anObject
]
