as yet unclassified
exportPharoExpression: aString context: aContext
	^ self exportPharoProgram: (RBParser parseExpression: aString) context: aContext.
	