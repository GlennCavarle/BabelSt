as yet unclassified
visitNewExpression: aNode
	| stNode theSelector |
	stNode := RBMessageNode new.
	stNode arguments: OrderedCollection new.
	theSelector := aNode arguments ifEmpty: [ #new ] ifNotEmpty: [ #new: ].
	stNode selector: theSelector.
	self visit: aNode callee.
	stNode receiver: self stack pop.
	aNode arguments
		do: [ :each | 
			self visit: each.
			stNode arguments add: self stack pop ].
	self stack push: stNode