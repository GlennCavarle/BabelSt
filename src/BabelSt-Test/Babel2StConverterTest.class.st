Class {
	#name : #Babel2StConverterTest,
	#superclass : #TestCase,
	#category : 'BabelSt-Test-Converter'
}

{ #category : #'as yet unclassified' }
Babel2StConverterTest class >> callExprJson [
	^ BabelCompiler transformES6ToAst: 'this.test("hello");'
]

{ #category : #'as yet unclassified' }
Babel2StConverterTest class >> newExprJson [
	^ BabelCompiler transformES6ToAst: 'new Object();'
]

{ #category : #'as yet unclassified' }
Babel2StConverterTest >> assertJSAst: jsonString isCompiledTo: stString [
	| ast |
	ast := BabelAstImporter  importFromJsonString: jsonString.
	self assert: (BabelASTConverter new visit: ast) stack top formattedCode = stString
]

{ #category : #'as yet unclassified' }
Babel2StConverterTest >> testCallExpr [
	self assertJSAst: self class callExprJson isCompiledTo: 'self test: ''hello'''
]

{ #category : #'as yet unclassified' }
Babel2StConverterTest >> testNewExpr [
	self assertJSAst: self class newExprJson isCompiledTo: 'Object new'
]
