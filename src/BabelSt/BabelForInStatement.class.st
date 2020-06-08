Class {
	#name : #BabelForInStatement,
	#superclass : #BabelStatement,
	#instVars : [
		'left',
		'right',
		'body'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelForInStatement >> accept: aVisitor [
	aVisitor visitForInStatement: self
]

{ #category : #accessing }
BabelForInStatement >> body [
	^ body
]

{ #category : #accessing }
BabelForInStatement >> body: anObject [
	body := anObject
]

{ #category : #accessing }
BabelForInStatement >> decorators [
	^ decorators
]

{ #category : #accessing }
BabelForInStatement >> decorators: anObject [
	decorators := anObject
]

{ #category : #accessing }
BabelForInStatement >> id [
	^ id
]

{ #category : #accessing }
BabelForInStatement >> id: anObject [
	id := anObject
]

{ #category : #'initialize-release' }
BabelForInStatement >> initialize [
	super initialize.
	right := BabelExpression new.
	body := BabelClassBody new.
]

{ #category : #accessing }
BabelForInStatement >> superClass [
	^ superClass
]

{ #category : #accessing }
BabelForInStatement >> superClass: anObject [
	superClass := anObject
]
