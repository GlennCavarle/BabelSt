visiting-ast
visitCascadeNode: aCascadeNode
	| seq |
	seq := BabelObjectCollection new.
	aCascadeNode messages do: [ :each | 
			self visitNode: each.
			seq add: self stack pop ].
	self stack push: seq.
	^ seq