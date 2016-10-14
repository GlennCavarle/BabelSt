visiting-expression
visitMemberExpression: aNode
	| stNode  |
	stNode := RBMessageNode new.
	stNode arguments: OrderedCollection new.
	self visit: aNode object.
	stNode receiver: self stack pop.
	stNode selector: aNode property name.
	self stack push: stNode