Class {
	#name : #BabelObject,
	#superclass : #Object,
	#instVars : [
		'type'
	],
	#category : 'BabelSt-AST'
}

{ #category : #converting }
BabelObject >> asJsonObject [
	| jObj |
	jObj := Dictionary new.
	self class allInstVarNames
		do: [ :sn | | v |
			v := self instVarNamed: sn.
			v isBabelASTNode ifTrue: [ v := v asJsonObject ].
			jObj at: sn put: v ].
		
	^ jObj
]

{ #category : #converting }
BabelObject >> asJsonString [
	^ NeoJSONWriter toString: self asJsonObject 
]

{ #category : #'initialize-release' }
BabelObject >> initialize [
	super initialize.
	type := (self className allButFirst: 5) asString.
	
]

{ #category : #testing }
BabelObject >> isBabelASTNode [
	^ true
]

{ #category : #'as yet unclassified' }
BabelObject >> jsonWriteOn: aStream [
	self asJsonObject jsonWriteOn: aStream
]

{ #category : #accessing }
BabelObject >> type [
	^ type
]

{ #category : #accessing }
BabelObject >> type: anObject [
	type := anObject
]
