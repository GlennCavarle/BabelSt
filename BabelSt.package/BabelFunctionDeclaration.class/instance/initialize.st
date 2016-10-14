initialize-release
initialize
	super initialize.
	params := BabelObjectCollection new.
	body := BabelBlockStatement new.
	generator := false.
	async := false