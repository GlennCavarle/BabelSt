as yet unclassified
parsePharoExpression: aString context: aContext
	^ self parsePharoProgram: (RBParser parseExpression: aString) context: aContext