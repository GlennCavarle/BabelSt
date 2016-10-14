as yet unclassified
isAccessor: aSelector
	| s |
	self currentReceiver
		ifNotNil: [ self currentReceiver isSelf
				ifFalse: [ ^ false ] ].
	s := aSelector endsWithAColon
		ifTrue: [ aSelector allButLast asSymbol ]
		ifFalse: [ aSelector ].
	^ self currentClass allSlots anySatisfy: [ :each | each name = s ]