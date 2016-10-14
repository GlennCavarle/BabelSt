as yet unclassified
exportPharoClass: aClass context: aContext
	| file |
	file := BabelFile new.
	file filename: aClass name , '.js'.
	file program body add: (self parsePharoClass: aClass context: aContext).
	^ file