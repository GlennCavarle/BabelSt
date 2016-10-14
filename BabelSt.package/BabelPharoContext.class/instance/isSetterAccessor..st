as yet unclassified
isSetterAccessor: aSelector
	(self isAccessor: aSelector)
		ifFalse: [ ^ false ].
	^ aSelector endsWithAColon