converting
asJsonObject
	| jObj |
	jObj := JsonObject new.
	self class allInstVarNames
		do: [ :sn |  | v |
			v := self instVarNamed: sn.
			v isBabelASTNode ifTrue: [ v := v asJsonObject ].
			jObj at: sn put: v ].
		^ jObj