as yet unclassified
parseBabelProgram: babelAst
	| pharoAstNodes |
	pharoAstNodes := (self new visit: babelAst) stack asOrderedCollection reversed.
	pharoAstNodes size = 1
		ifTrue: [ ^ pharoAstNodes first ].
	^ RBSequenceNode statements: pharoAstNodes