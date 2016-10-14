visiting-expression
visitBinaryExpression: aNode
	| stNode |
	stNode := RBMessageNode new.
	stNode selector: (self convertOperator: aNode operator).
	self visit: aNode left.
	stNode receiver: self stack pop.
	self visit: aNode right.
	stNode arguments:{self stack pop}.
	self stack push: stNode