creating
createIIFE
	| expr |
	expr := BabelCallExpression new.
	expr callee: self createBlockFunction.
	^ expr