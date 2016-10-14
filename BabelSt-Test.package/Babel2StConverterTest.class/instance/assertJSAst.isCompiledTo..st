as yet unclassified
assertJSAst: jsonString isCompiledTo: stString
	| ast |
	ast := BabelAstImporter  importFromJsonString: jsonString.
	self assert: (BabelASTConverter new visit: ast) stack top formattedCode = stString