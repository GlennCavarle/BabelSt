as yet unclassified
testTemporaryStatement
	self 
		assertSt: '|test1 test2 |' 
		compiledTo:'var test1, test2;'.
	