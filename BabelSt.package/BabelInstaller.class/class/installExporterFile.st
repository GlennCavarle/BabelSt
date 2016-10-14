installing
installExporterFile
	self nodeDirectory asFileReference / self exporterFilename
		writeStreamDo: [ :stream | stream nextPutAll: self exporterScriptSource]