as yet unclassified
visitLiteral: aNode
	| stNode |
	stNode := RBLiteralValueNode value: aNode value.
	self stack push: stNode