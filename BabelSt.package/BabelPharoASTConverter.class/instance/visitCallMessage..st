visiting-ast
visitCallMessage: aMessageNode
	| expr rcv |
	expr := BabelCallExpression new.
	self visitMessageReceiverNode: aMessageNode receiver.
	rcv := self stack pop.
	self visitMessageArgumentsNode: aMessageNode arguments.
	expr arguments: self stack pop.
	expr callee: BabelMemberExpression new.
	expr callee
		property: (BabelIdentifier new name: (self convertMethodSelector: aMessageNode selector)).
	expr callee object: rcv.
	self stack push: expr.
	self context currentReceiver: nil.
	^ expr