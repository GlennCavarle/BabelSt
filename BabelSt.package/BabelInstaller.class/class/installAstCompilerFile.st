installing
installAstCompilerFile
	self nodeDirectory asFileReference / self astCompilerFilename
		writeStreamDo: [ :stream | stream nextPutAll: self astCompilerScriptSource]