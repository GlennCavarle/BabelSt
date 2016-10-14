initialize-release
initialize
	super initialize.
	type := (self className allButFirst: 5) asString.
	