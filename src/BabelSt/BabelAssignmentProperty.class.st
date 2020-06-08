Class {
	#name : #BabelAssignmentProperty,
	#superclass : #BabelObjectProperty,
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelAssignmentProperty >> accept: aVisitor [
	aVisitor visitAssignmentProperty: self
]
