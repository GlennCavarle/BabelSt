as yet unclassified
assertSt: stSources compiledTo: jsSources withContext: aContext
	| file jsOut |
	file := BabelPharoASTConverter exportPharoExpression: stSources context: aContext.
	"(converter stToJs: stSources) file inspect."
	jsOut := (BabelCompiler compileToES6: file).
	self assert: jsOut trimBoth withSqueakLineEndings equals: jsSources withSqueakLineEndings