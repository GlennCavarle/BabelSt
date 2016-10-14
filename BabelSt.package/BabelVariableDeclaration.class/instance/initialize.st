initialize-release
initialize
	super initialize.
	kind := self class VAR.
	declarations := BabelObjectCollection new.