Class {
	#name : #BabelSwitchStatement,
	#superclass : #BabelStatement,
	#instVars : [
		'discriminant',
		'cases'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelSwitchStatement >> accept: aVisitor [
	aVisitor visitSwitchStatement: self
]

{ #category : #accessing }
BabelSwitchStatement >> cases [
	^ cases
]

{ #category : #accessing }
BabelSwitchStatement >> cases: anObject [
	cases := anObject
]

{ #category : #accessing }
BabelSwitchStatement >> discriminant [
	^ discriminant
]

{ #category : #accessing }
BabelSwitchStatement >> discriminant: anObject [
	discriminant := anObject
]

{ #category : #'initialize-release' }
BabelSwitchStatement >> initialize [
	super initialize.
	discriminant := BabelExpression new.
	cases := BabelObjectCollection new
]
