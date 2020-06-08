Class {
	#name : #BabelPharoContext,
	#superclass : #BabelDummyContext,
	#category : 'BabelSt-Converter'
}

{ #category : #'as yet unclassified' }
BabelPharoContext class >> targetClass: aTarget [
	^ self new
		targetClass: aTarget;
		yourself
]

{ #category : #'as yet unclassified' }
BabelPharoContext >> isAccessor: aSelector [
	| s |
	self currentReceiver
		ifNotNil: [ self currentReceiver isSelf
				ifFalse: [ ^ false ] ].
	s := aSelector endsWithAColon
		ifTrue: [ aSelector allButLast asSymbol ]
		ifFalse: [ aSelector ].
	^ self currentClass allSlots anySatisfy: [ :each | each name = s ]
]

{ #category : #'as yet unclassified' }
BabelPharoContext >> isGetterAccessor: aSelector [
	(self isAccessor: aSelector)
		ifFalse: [ ^ false ].
	^ aSelector endsWithAColon not
]

{ #category : #'as yet unclassified' }
BabelPharoContext >> isSetterAccessor: aSelector [
	(self isAccessor: aSelector)
		ifFalse: [ ^ false ].
	^ aSelector endsWithAColon
]
