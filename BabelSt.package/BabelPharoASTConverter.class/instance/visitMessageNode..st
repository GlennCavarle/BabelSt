visiting-ast
visitMessageNode: aMessageNode
	| expr |
	aMessageNode isBinary
		ifTrue: [ ^ self visitBinaryMessage: aMessageNode ].
	aMessageNode isInlineIf
		ifTrue: [ ^ self visitIfMessage: aMessageNode ].
	aMessageNode isInlineWhile
		ifTrue: [ ^ self visitWhileMessage: aMessageNode ].
	(self context isAccessor: aMessageNode selector)
		ifTrue: [ expr := self visitAccessorMessage: aMessageNode ]
		ifFalse: [ expr := self visitCallMessage: aMessageNode ].
	(aMessageNode parent isSequence or: [ aMessageNode parent isCascade ]) ifTrue: [
		   expr := BabelExpressionStatement new.
			expr expression: self stack pop.
			self stack push: expr ].
	self context currentReceiver: nil.
	^ expr