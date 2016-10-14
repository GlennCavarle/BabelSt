visiting-class
visitCompiledMethod: aMeth
	aMeth argumentNames do: [ :each | self visitMethodArgument: each].
	self visitNode: aMeth ast body.