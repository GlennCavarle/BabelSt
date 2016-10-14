visiting-expression
visitArrayExpression: aNode
	| stNode |
	stNode := RBArrayNode new.
	stNode statements: OrderedCollection new.
	aNode elements
		do: [ :each | 
			self visit: each.
			stNode statements add: self stack pop ].
	self stack push: stNode