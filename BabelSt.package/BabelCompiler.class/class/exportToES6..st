as yet unclassified
exportToES6: aBabelFile
	^ self
		exec: 'node ' , self exporterFilename , ' ''' , aBabelFile filename  ,' ''' , aBabelFile asJsonObject asJsonString , ''''
		cwd: self nodeDirectory