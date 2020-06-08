Class {
	#name : #BabelAbstractTest,
	#superclass : #TestCase,
	#category : 'BabelSt-Test-Converter'
}

{ #category : #'as yet unclassified' }
BabelAbstractTest >> assertSt: stSources compiledTo: jsSources [
	^ self assertSt: stSources compiledTo: jsSources withContext: nil
]

{ #category : #'as yet unclassified' }
BabelAbstractTest >> assertSt: stSources compiledTo: jsSources withContext: aContext [
	| file jsOut |
	file := BabelPharoASTConverter exportPharoExpression: stSources context: aContext.
	"(converter stToJs: stSources) file inspect."
	jsOut := (BabelCompiler compileToES6: file).
	self assert: jsOut trimBoth withSqueakLineEndings equals: jsSources withSqueakLineEndings
]
