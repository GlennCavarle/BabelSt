as yet unclassified
compileToES6: aBabelFile
	| aJsonString |
	aJsonString := aBabelFile asJsonString.
	^ (self exec: 'node ''' , self astCompilerFilename , ''' ''' , aJsonString , '''' cwd: self nodeDirectory)
		