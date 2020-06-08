Class {
	#name : #BabelObjectCollection,
	#superclass : #OrderedCollection,
	#category : 'BabelSt-AST'
}

{ #category : #testing }
BabelObjectCollection >> asJsonObject [
	^ self
		collect: [ :each | 
			each isBabelASTNode
				ifTrue: [ each asJsonObject ]
				ifFalse: [ each ] ]
]

{ #category : #testing }
BabelObjectCollection >> isBabelASTNode [
	^ true
]
