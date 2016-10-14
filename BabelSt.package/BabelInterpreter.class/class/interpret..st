as yet unclassified
interpret: aJsString
	| babelAst pharoAst methNode |
	babelAst := BabelAstImporter importFromJsonString: (self transformES6ToAst: aJsString).
	pharoAst := BabelASTConverter parseBabelProgram: babelAst.
	methNode := RBMethodNode selector: #babelInterpreter body: pharoAst asSequenceNode.
	"babelAst inspect.
	pharoAst inspect."
	methNode addReturn.
	
	^ methNode compiledMethod valueWithReceiver: nil arguments: #()