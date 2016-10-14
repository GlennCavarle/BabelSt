visiting-ast
visitVariableNode: aVariableNode
	| ident |
	ident := BabelIdentifier new name: aVariableNode name.
	self stack push: ident.
	^ ident