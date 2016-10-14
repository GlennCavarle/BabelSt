creating
createBlockFunction
	| expr |
	expr := BabelFunctionExpression new.
	expr extra parenthesized: true.
	^ expr