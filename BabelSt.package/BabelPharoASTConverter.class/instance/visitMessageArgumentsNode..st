visiting-ast
visitMessageArgumentsNode: aCollection
	| args |
	args := BabelObjectCollection new.
	aCollection do: [ :each | 
			self visitNode: each.
			args add: self stack pop ].
	self stack push: args.
	^ args