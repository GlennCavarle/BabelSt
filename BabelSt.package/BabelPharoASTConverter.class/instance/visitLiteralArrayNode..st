visiting-ast
visitLiteralArrayNode: aRBLiteralArrayNode
	| expr |
	expr := BabelArrayExpression new.
	aRBLiteralArrayNode contents
		do: [ :each | 
			self visitNode: each.
			expr elements add: self stack pop ].
	self stack push: expr.
	^ expr