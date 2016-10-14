visiting
visit: anObject
	anObject ifNil: [ ^ self ].
	anObject accept: self