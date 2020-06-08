as yet unclassified
exec: aString cwd: aWd
	^ (OSSUnixSubprocess new
		shellCommand: aString;
		workingDirectory: aWd;
		redirectStdout;
		redirectStderr
		) runAndWait stdoutStream upToEnd