visiting-ast
visitAssignmentNode: anAssignmentNode
	| stmt an |
	stmt := BabelExpressionStatement new.
	an := BabelAssignmentExpression new.
	stmt expression: an.
	an operator: BabelAssignmentOperator EQUAL.
	self visitNode: anAssignmentNode variable.
	an left: self stack pop.
	self visitNode: anAssignmentNode value.
	an right: self stack pop.
	self stack push: stmt.
	^ stmt