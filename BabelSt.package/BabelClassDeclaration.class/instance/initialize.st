initialize-release
initialize
	super initialize.
	id := BabelIdentifier new.
	body := BabelClassBody new.
	decorators := BabelObjectCollection new.