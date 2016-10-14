initialize-release
initialize
	super initialize.
	key := BabelIdentifier new.
	body := BabelBlockStatement new.
	kind := self class METHOD_KIND.
	computed := false.
	static := false.
	decorators := BabelObjectCollection new.
	params := BabelObjectCollection new