Class {
	#name : #BabelTestContext,
	#superclass : #BabelPharoContext,
	#category : 'BabelSt-Test-Converter'
}

{ #category : #'as yet unclassified' }
BabelTestContext >> isAccessor: aSelector [
	self currentReceiver
		ifNotNil: [ self currentReceiver isSelf
				ifFalse: [ ^ false ] ].
	^ #(#test #test:) includes: aSelector
]
