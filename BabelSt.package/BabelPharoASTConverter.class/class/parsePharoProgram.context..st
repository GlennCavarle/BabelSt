as yet unclassified
parsePharoProgram: aNode context: aContext
	^ (self new
		context: aContext;
		visitNode: aNode;
		stack) top