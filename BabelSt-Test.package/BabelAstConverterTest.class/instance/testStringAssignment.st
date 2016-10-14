as yet unclassified
testStringAssignment
	self 
		assertSt: 'test1 := ''hello''' 
		compiledTo:'test1 = "hello";'.
	