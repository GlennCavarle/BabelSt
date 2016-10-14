converting
convertAccessorSelector: aSelector
	(self context isSetterAccessor: aSelector)
		ifTrue: [ ^ 'set' , (aSelector copyReplaceAll: #($:) with: #()) asCamelCase ].
	(self context isGetterAccessor: aSelector)
		ifTrue: [ ^ 'get' , (aSelector copyReplaceAll: #($:) with: #()) asCamelCase ].
	^ aSelector endsWithAColon
		ifTrue: [ aSelector allButLast asSymbol ]
		ifFalse: [ aSelector ]