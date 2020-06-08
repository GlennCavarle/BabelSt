Class {
	#name : #BabelLabeledStatement,
	#superclass : #BabelStatement,
	#instVars : [
		'label',
		'body'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelLabeledStatement >> accept: aVisitor [
	aVisitor visitLabeledStatement: self
]

{ #category : #accessing }
BabelLabeledStatement >> body [
	^ body
]

{ #category : #accessing }
BabelLabeledStatement >> body: anObject [
	body := anObject
]

{ #category : #'initialize-release' }
BabelLabeledStatement >> initialize [
	super initialize.
	label := BabelIdentifier new.
	body := BabelStatement new
]

{ #category : #accessing }
BabelLabeledStatement >> label [
	^ label
]

{ #category : #accessing }
BabelLabeledStatement >> label: anObject [
	label := anObject
]
