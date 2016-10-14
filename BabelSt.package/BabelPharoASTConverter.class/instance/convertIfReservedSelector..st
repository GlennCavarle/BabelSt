converting
convertIfReservedSelector: aSelector
	| reserved |
	reserved := {(#class -> #constructor)} asDictionary.
	reserved at: aSelector ifPresent: [ :s | ^ s ].
	^ aSelector