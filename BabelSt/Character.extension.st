Extension { #name : #Character }

{ #category : #'*BabelSt' }
Character >> jsonWriteOn: aStream [
	self asString jsonWriteOn: aStream
]
