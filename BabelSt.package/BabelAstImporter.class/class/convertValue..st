as yet unclassified
convertValue: anObject

	anObject ifNil: [ ^ nil ].
	(anObject isLiteral) ifTrue: [ ^ anObject ].
	anObject isArray ifTrue: [ ^ self convertArrayValue: anObject ].
	anObject at: #type ifAbsent: [ ^ false ].
	(anObject at: #type) isString ifFalse:[^ false].
	^ self importFromJsonObject: anObject