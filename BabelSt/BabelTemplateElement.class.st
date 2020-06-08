Class {
	#name : #BabelTemplateElement,
	#superclass : #BabelNode,
	#instVars : [
		'tail',
		'value'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelTemplateElement >> accept: aVisitor [
	aVisitor visitTemplateElement: self
]

{ #category : #'initialize-release' }
BabelTemplateElement >> initialize [
	super initialize.
	tail := false.
	value := BabelTemplateElementValue new
]

{ #category : #accessing }
BabelTemplateElement >> tail [
	^ tail
]

{ #category : #accessing }
BabelTemplateElement >> tail: anObject [
	tail := anObject
]

{ #category : #accessing }
BabelTemplateElement >> value [
	^ value
]

{ #category : #accessing }
BabelTemplateElement >> value: anObject [
	value := anObject
]
