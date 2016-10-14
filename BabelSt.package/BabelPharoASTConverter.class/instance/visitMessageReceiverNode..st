visiting-ast
visitMessageReceiverNode: aReceiverNode
	self context currentReceiver: aReceiverNode.
	^ self visitNode: aReceiverNode.
	