visiting-class
visitMethodArgument: aSymbol
	| arg |
	arg := BabelIdentifier new.
	arg name: aSymbol.
	self stack push: arg.
	^ arg