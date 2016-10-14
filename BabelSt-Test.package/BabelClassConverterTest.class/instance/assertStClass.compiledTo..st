as yet unclassified
assertStClass: aClass compiledTo: jsSources
	| file jsOut |
	file := BabelPharoClassConverter exportPharoClass: aClass context: nil.
	jsOut := (BabelCompiler compileToES6: file) at: 1.
	self assert: jsOut trimBoth withSqueakLineEndings equals: jsSources withSqueakLineEndings