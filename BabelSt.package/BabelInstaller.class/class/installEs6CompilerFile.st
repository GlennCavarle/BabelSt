installing
installEs6CompilerFile
"self installEs6CompilerFile"
	self nodeDirectory asFileReference / self es6CompilerFilename
		writeStreamDo: [ :stream | stream nextPutAll: self es6CompilerScriptSource]