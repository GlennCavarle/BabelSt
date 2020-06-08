Class {
	#name : #BabelCompiler,
	#superclass : #BabelCommand,
	#category : 'BabelSt-Tool'
}

{ #category : #'as yet unclassified' }
BabelCompiler class >> compileToES6: aBabelFile [
	| aJsonString |
	aJsonString := aBabelFile asJsonString.
	^ (self exec: 'node ''' , self astCompilerFilename , ''' ''' , aJsonString , '''' cwd: self nodeDirectory)
		
]

{ #category : #'as yet unclassified' }
BabelCompiler class >> exportToES6: aBabelFile [
	^ self
		exec: 'node ' , self exporterFilename , ' ''' , aBabelFile filename  ,' ''' , aBabelFile asJsonObject asJsonString , ''''
		cwd: self nodeDirectory
]

{ #category : #'as yet unclassified' }
BabelCompiler class >> transformES6ToAst: aJsString [
	
	^ (self exec: 'node ''' , self es6CompilerFilename , ''' ''' , aJsString , '''' cwd: self nodeDirectory)
]
