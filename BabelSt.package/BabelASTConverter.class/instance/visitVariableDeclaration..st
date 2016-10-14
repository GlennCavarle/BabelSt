visiting-declaration
visitVariableDeclaration: aNode
	aNode declarations do: [ :each | each accept: self ]