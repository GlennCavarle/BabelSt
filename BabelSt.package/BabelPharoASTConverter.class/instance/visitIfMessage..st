visiting-ast
visitIfMessage: aMessageNode
	| stmt |
	stmt := BabelIfStatement new.
	self visitMessageReceiverNode: aMessageNode receiver.
	stmt test: self stack pop.
	self visitIfTrueBlock: aMessageNode arguments first.
	stmt consequent: self stack pop.
	aMessageNode arguments size = 2 ifTrue:
			[ self visitIfFalseBlock: aMessageNode arguments second.
			stmt alternate: self stack pop ].
	self stack push: stmt.
	self context currentReceiver: nil.
	^ stmt