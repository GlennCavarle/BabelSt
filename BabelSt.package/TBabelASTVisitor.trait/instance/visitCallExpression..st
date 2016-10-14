visiting-expression
visitCallExpression: aNode
	self visit: aNode callee.
	aNode arguments do: [ :each | self visit: each ]