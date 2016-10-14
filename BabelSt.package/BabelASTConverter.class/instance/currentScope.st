accessing
currentScope
	^ currentScope ifNil: [ currentScope := BabelTypeScope new ]