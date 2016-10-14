visiting-ast
visitLiteralNode: aLiteralNode
	| v |
	v := aLiteralNode value isNumber
		ifTrue: [ BabelNumericLiteral new ]
		ifFalse: [ BabelStringLiteral new ].
	v value: aLiteralNode value.
	self stack push: v.
	^ v