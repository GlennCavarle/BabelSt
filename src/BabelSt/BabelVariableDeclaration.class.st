Class {
	#name : #BabelVariableDeclaration,
	#superclass : #BabelDeclaration,
	#instVars : [
		'declarations',
		'kind'
	],
	#category : 'BabelSt-AST'
}

{ #category : #'as yet unclassified' }
BabelVariableDeclaration class >> CONST [
	^ 'const'
]

{ #category : #'as yet unclassified' }
BabelVariableDeclaration class >> LET [
	^ 'let'
]

{ #category : #'as yet unclassified' }
BabelVariableDeclaration class >> VAR [
	^ 'var'
]

{ #category : #visiting }
BabelVariableDeclaration >> accept: aVisitor [
	aVisitor visitVariableDeclaration: self
]

{ #category : #accessing }
BabelVariableDeclaration >> declarations [
	^ declarations
]

{ #category : #accessing }
BabelVariableDeclaration >> declarations: anObject [
	declarations := anObject
]

{ #category : #'initialize-release' }
BabelVariableDeclaration >> initialize [
	super initialize.
	kind := self class VAR.
	declarations := BabelObjectCollection new.
]

{ #category : #accessing }
BabelVariableDeclaration >> kind [
	^ kind
]

{ #category : #accessing }
BabelVariableDeclaration >> kind: anObject [
	kind := anObject
]
