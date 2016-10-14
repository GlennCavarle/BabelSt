visiting-program
visitProgram: anObject
	anObject body do: [ :each | self visit: each ]