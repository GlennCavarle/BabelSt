as yet unclassified
isAccessor: aSelector
	self currentReceiver
		ifNotNil: [ self currentReceiver isSelf
				ifFalse: [ ^ false ] ].
	^ #(#test #test:) includes: aSelector