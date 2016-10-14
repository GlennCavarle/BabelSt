as yet unclassified
testSuperCall
	
	self 
		assertSt: 'super test' 
		compiledTo:'super.test();'
		withContext: BabelTestContext new.
	