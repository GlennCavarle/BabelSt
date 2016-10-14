visiting-expression
visitAssignmentExpression: aNode
	|stNode|
	stNode := RBAssignmentNode new.
	self visit: aNode left.
	stNode variable: self stack pop.
	self visit: aNode right.
	stNode value: self stack pop.
	self stack push: stNode
	
	