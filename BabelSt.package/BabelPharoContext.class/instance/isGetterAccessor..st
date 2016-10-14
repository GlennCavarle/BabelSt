as yet unclassified
isGetterAccessor: aSelector
	(self isAccessor: aSelector)
		ifFalse: [ ^ false ].
	^ aSelector endsWithAColon not