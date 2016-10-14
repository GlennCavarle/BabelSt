visiting-declaration
visitVariableDeclarator: aNode
	| stNode |
	stNode := RBVariableNode named: aNode id name.
	aNode init
		ifNotNil: [ :i | 
			i accept: self.
			stNode := RBAssignmentNode variable: stNode value: self stack pop ].
	self stack push: stNode