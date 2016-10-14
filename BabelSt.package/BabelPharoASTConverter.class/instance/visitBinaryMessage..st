visiting-ast
visitBinaryMessage: aMessageNode
	| expr |
	expr := BabelBinaryExpression new.
	expr operator: (self convertSpecialMethodSelector: aMessageNode selector).
	self visitMessageReceiverNode: aMessageNode receiver.
	expr left: self stack pop.
	self visitNode: aMessageNode arguments first.
	expr right: self stack pop.
	self stack push: expr.
	self context currentReceiver: nil.
	^ expr