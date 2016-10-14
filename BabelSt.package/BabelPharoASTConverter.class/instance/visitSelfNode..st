visiting-ast
visitSelfNode: aSelfNode
	| expr |
	expr := BabelThisExpression new.
	self stack push: expr.
	^ expr