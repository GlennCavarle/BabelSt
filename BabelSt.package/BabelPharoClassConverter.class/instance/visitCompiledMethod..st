visiting-class
visitCompiledMethod: aMeth
	| meth |
	self context currentMethod: aMeth.
	meth := BabelClassMethod new.
	meth key name: (self convertMethodSelector: aMeth selector).
	aMeth argumentNames
		do: [ :each | 
			self visitMethodArgument: each.
			meth params add: self stack pop ].
	self visitNode: aMeth ast body.
	meth body body: self stack pop.
	self stack push: meth.
	^ meth