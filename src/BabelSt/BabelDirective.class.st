Class {
	#name : #BabelDirective,
	#superclass : #BabelNode,
	#instVars : [
		'value'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelDirective >> accept: aVisitor [
	aVisitor visitDirective: self
]

{ #category : #'initialize-release' }
BabelDirective >> initialize [
	super initialize.
	value := BabelDirectiveLiteral new.
	
]

{ #category : #accessing }
BabelDirective >> value [
	^ value
]

{ #category : #accessing }
BabelDirective >> value: anObject [
	value := anObject
]
