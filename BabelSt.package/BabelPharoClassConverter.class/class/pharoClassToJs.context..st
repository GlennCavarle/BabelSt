as yet unclassified
pharoClassToJs: aClass context: aContext
	| file |
	file := self exportPharoClass: aClass context: nil.
	^ (BabelCompiler compileToES6: file) at: 1