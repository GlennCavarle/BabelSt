Class {
	#name : #BabelInstaller,
	#superclass : #BabelCommand,
	#category : 'BabelSt-Tool'
}

{ #category : #installing }
BabelInstaller class >> install [
	"self install"

	Transcript
		clear;
		show: 'creating directories ...';
		crShow: (self exec: 'mkdir -p ' , self nodeDirectory);
		crShow: (self exec: 'mkdir -p ' , self nodeDirectory , '/src');
		crShow: 'installing babel-core ...';
		crShow: (self exec: 'npm install babel-core' cwd: self nodeDirectory);
		crShow: 'installing babel compiler/exporter scripts ...'.
	self
		installAstCompilerFile;
		installEs6CompilerFile;
		installExporterFile
]

{ #category : #installing }
BabelInstaller class >> installAstCompilerFile [
	self nodeDirectory asFileReference / self astCompilerFilename
		writeStreamDo: [ :stream | stream nextPutAll: self astCompilerScriptSource]
]

{ #category : #installing }
BabelInstaller class >> installEs6CompilerFile [
"self installEs6CompilerFile"
	self nodeDirectory asFileReference / self es6CompilerFilename
		writeStreamDo: [ :stream | stream nextPutAll: self es6CompilerScriptSource]
]

{ #category : #installing }
BabelInstaller class >> installExporterFile [
	self nodeDirectory asFileReference / self exporterFilename
		writeStreamDo: [ :stream | stream nextPutAll: self exporterScriptSource]
]
