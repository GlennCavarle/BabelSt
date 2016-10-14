visiting-ast
visitSequenceNode: aSequenceNode
	| seq tmp |
	seq := BabelObjectCollection new.
	self visitTemporaryNodes: aSequenceNode temporaries.
	tmp := self stack pop.
	tmp declarations ifNotEmpty: [ seq add: tmp ].
	aSequenceNode statements do: [ :each | 
		|val|
			self visitNode: each.
			val := self stack pop .
			val isCollection
				ifTrue: [ seq addAll: val ]
				ifFalse: [ seq add: val ] ].
	self stack push: seq.
	^ seq