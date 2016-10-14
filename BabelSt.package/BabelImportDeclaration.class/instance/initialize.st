initialize-release
initialize
	super initialize.
	source := BabelStringLiteral new.
	specifiers := BabelObjectCollection new.
	importKind := 'value'