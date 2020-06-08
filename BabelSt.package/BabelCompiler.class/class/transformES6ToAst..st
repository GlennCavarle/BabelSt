as yet unclassified
transformES6ToAst: aJsString
	
	^ (self exec: 'node ''' , self es6CompilerFilename , ''' ''' , aJsString , '''' cwd: self nodeDirectory)