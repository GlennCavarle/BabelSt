visiting-statement
visitBlockStatement: aNode
	|stNode|
	stNode := RBSequenceNode new.
	aNode body do:[:each| self visit: each. stNode addNode: self stack pop].
	self stack push: stNode