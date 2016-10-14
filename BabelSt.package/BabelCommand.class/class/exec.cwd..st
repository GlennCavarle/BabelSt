as yet unclassified
exec: aString cwd: aWd
	^ (PipeableOSProcess
		command: aString
		environment: nil
		workingDir: aWd
		input: nil
		output: nil
		error: nil
		errorPipelineStream: nil) 