as yet unclassified
exportPharoProgram: aNode context: aContext
	| file anAst|
	anAst := aNode.
	file := BabelFile new.
	[ anAst parent isNotNil ] whileTrue: [ anAst := anAst parent ].
	file program body: (self parsePharoProgram: anAst context: aContext).
	^ file