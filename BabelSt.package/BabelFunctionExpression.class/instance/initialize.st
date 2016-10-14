initialize-release
initialize
	super initialize.
	expression := false.
	generator := false.
	async := false.
	body := BabelBlockStatement new.
	params := BabelObjectCollection new.
	extra := BabelFunctionExtra new