visiting-ast
visitReturnNode: aReturnNode
	| retStmt |
	retStmt := BabelReturnStatement new.
	self visitNode: aReturnNode value.
	retStmt argument: self stack pop.
	self stack push: retStmt.
	^ retStmt