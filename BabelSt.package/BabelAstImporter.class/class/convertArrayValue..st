as yet unclassified
convertArrayValue: anObject
	| col |
	col := self collectionClass new.
	anObject do: [ :each | col add: (self convertValue: each) ].
	^ col