initialize-release
initialize
	super initialize.
	key := BabelIdentifier new.
	value := BabelExpression new.
	static := false.