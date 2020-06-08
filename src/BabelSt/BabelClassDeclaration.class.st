Class {
	#name : #BabelClassDeclaration,
	#superclass : #BabelDeclaration,
	#instVars : [
		'id',
		'superClass',
		'body',
		'decorators'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelClassDeclaration >> accept: aVisitor [
	aVisitor visitClassDeclaration: self
]

{ #category : #accessing }
BabelClassDeclaration >> body [
	^ body
]

{ #category : #accessing }
BabelClassDeclaration >> body: anObject [
	body := anObject
]

{ #category : #accessing }
BabelClassDeclaration >> decorators [
	^ decorators
]

{ #category : #accessing }
BabelClassDeclaration >> decorators: anObject [
	decorators := anObject
]

{ #category : #accessing }
BabelClassDeclaration >> id [
	^ id
]

{ #category : #accessing }
BabelClassDeclaration >> id: anObject [
	id := anObject
]

{ #category : #'initialize-release' }
BabelClassDeclaration >> initialize [
	super initialize.
	id := BabelIdentifier new.
	body := BabelClassBody new.
	decorators := BabelObjectCollection new.
]

{ #category : #accessing }
BabelClassDeclaration >> superClass [
	^ superClass
]

{ #category : #accessing }
BabelClassDeclaration >> superClass: anObject [
	superClass := anObject
]
