converting
convertIdentifier: aString
	| jsClass jsClassName |
	jsClassName := (#BabelStd , aString) asSymbol.
	jsClass := Smalltalk at: jsClassName ifAbsent: [ ^ aString asSymbol ].
	^ jsClass name