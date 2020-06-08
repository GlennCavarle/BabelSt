Class {
	#name : #BabelAssignmentExpression,
	#superclass : #BabelExpression,
	#instVars : [
		'operator',
		'left',
		'right'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelAssignmentExpression >> accept: aVisitor [
	aVisitor visitAssignmentExpression: self
]

{ #category : #accessing }
BabelAssignmentExpression >> left [
	^ left
]

{ #category : #accessing }
BabelAssignmentExpression >> left: anObject [
	left := anObject
]

{ #category : #accessing }
BabelAssignmentExpression >> operator [
	^ operator
]

{ #category : #accessing }
BabelAssignmentExpression >> operator: anObject [
	operator := anObject
]

{ #category : #accessing }
BabelAssignmentExpression >> right [
	^ right
]

{ #category : #accessing }
BabelAssignmentExpression >> right: anObject [
	right := anObject
]
