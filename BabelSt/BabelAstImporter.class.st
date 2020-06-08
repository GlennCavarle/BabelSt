Class {
	#name : #BabelAstImporter,
	#superclass : #Object,
	#category : 'BabelSt-Importer'
}

{ #category : #'as yet unclassified' }
BabelAstImporter class >> classPrefix [
	^ 'Babel'
]

{ #category : #'as yet unclassified' }
BabelAstImporter class >> collectionClass [
	^ BabelObjectCollection 
]

{ #category : #'as yet unclassified' }
BabelAstImporter class >> convertArrayValue: anObject [
	| col |
	col := self collectionClass new.
	anObject do: [ :each | col add: (self convertValue: each) ].
	^ col
]

{ #category : #'as yet unclassified' }
BabelAstImporter class >> convertValue: anObject [

	anObject ifNil: [ ^ nil ].
	(anObject isLiteral) ifTrue: [ ^ anObject ].
	anObject isArray ifTrue: [ ^ self convertArrayValue: anObject ].
	anObject at: #type ifAbsent: [ ^ false ].
	(anObject at: #type) isString ifFalse:[^ false].
	^ self importFromJsonObject: anObject
]

{ #category : #'as yet unclassified' }
BabelAstImporter class >> importFromJsonObject: aJsonObject [
	| babelAstNode |
	babelAstNode := (self classPrefix , (aJsonObject at:#type)) asClass new.
	aJsonObject keysAndValuesDo: [ :k :v | 
			| val |
			val := self convertValue: v.
			val = false ifFalse: [
				 (babelAstNode respondsTo: k asSymbol asMutator)
						ifTrue: [ babelAstNode perform: k asSymbol asMutator with: val ] ] ].
	^ babelAstNode
]

{ #category : #'as yet unclassified' }
BabelAstImporter class >> importFromJsonString: aJsonString [
	| jsonObject |
	jsonObject := NeoJSONReader fromString: aJsonString.
	^ self importFromJsonObject: jsonObject
]
