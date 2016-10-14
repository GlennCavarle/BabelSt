visiting-ast
visitBlockNode: aBlockNode
	| expr |
	expr := self createBlockFunction.
	aBlockNode argumentNames
		do:
			[ :each | 
			self visitBlockArgumentNode: each.
			expr params add: self stack pop ].
	self visitNode: aBlockNode body.
	expr body body: self stack pop.
	aBlockNode parent isSequence
		ifTrue: [ expr := BabelExpressionStatement new
				expression: expr;
				yourself ].
	self stack push: expr.
	^ expr