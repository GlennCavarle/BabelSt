as yet unclassified
visitIdentifier: aNode
	| val stNode |
	val := self convertIdentifier: aNode name.
	stNode := RBVariableNode named: val.
	self stack push: stNode