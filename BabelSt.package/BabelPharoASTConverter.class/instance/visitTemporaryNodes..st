visiting-ast
visitTemporaryNodes: aNodeCollection
	| decl |
	decl := BabelVariableDeclaration new.
	aNodeCollection
		do: [ :each | 
			self visitNode: each.
			decl declarations add: self stack pop ].
	self stack push: decl.
	^ decl
	