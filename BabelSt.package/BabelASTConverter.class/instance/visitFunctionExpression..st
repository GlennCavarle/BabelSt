visiting-expression
visitFunctionExpression: aNode
	| stNode body args |
	args := OrderedCollection new.
	self visit: aNode body.
	body := self stack pop.
	aNode params
		do: [ :each | 
			self visit: each.
			args add: self stack pop ].
	stNode := RBBlockNode arguments: args body:body.
	self stack push: stNode