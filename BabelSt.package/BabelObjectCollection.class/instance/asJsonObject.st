testing
asJsonObject
	^ self
		collect: [ :each | 
			each isBabelASTNode
				ifTrue: [ each asJsonObject ]
				ifFalse: [ each ] ]