as yet unclassified
visitThisExpression: aNode
	| stNode |
	stNode := RBSelfNode named:#self.
	self stack push: stNode