as yet unclassified
importFromJsonObject: aJsonObject
	| babelAstNode |
	babelAstNode := (self classPrefix , aJsonObject type) asClass new.
	aJsonObject keysAndValuesDo: [ :k :v | 
			| val |
			val := self convertValue: v.
			val = false ifFalse: [
				 (babelAstNode respondsTo: k asSymbol asMutator)
						ifTrue: [ babelAstNode perform: k asSymbol asMutator with: val ] ] ].
	^ babelAstNode