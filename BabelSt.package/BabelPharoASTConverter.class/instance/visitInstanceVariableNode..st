visiting-ast
visitInstanceVariableNode: aSelfNode
	| expr |
	expr := BabelMemberExpression new.
	expr object: BabelThisExpression new.
	self visitVariableNode: aSelfNode.
	expr property: self stack pop.
	self stack push: expr.
	^ expr