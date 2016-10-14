initialize-release
initialize
	super initialize.
	directives := BabelObjectCollection new.
	body := BabelObjectCollection new.
	sourceType:= 'module'