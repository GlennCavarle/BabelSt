visiting-ast
visitArrayNode: anArrayNode 
	| expr |
	expr := BabelArrayExpression new.
	anArrayNode children
		do: [ :each | 
			self visitNode: each.
			expr elements add: self stack pop ].
	self stack push: expr.
	^ expr
