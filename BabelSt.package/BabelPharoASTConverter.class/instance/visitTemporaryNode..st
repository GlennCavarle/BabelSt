visiting-ast
visitTemporaryNode: aNode
	| tmp |
	tmp := BabelVariableDeclarator new.
	tmp id name: aNode name.
	self stack push: tmp.
	^tmp