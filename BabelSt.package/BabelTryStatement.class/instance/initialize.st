initialize-release
initialize
	super initialize.
	block := BabelBlockStatement new.
	handler := BabelCatchClause new.
	finalizer := BabelBlockStatement new