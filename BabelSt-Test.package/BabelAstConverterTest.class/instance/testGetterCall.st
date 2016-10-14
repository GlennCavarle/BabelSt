as yet unclassified
testGetterCall
	self 
		assertSt: 'self test' 
		compiledTo:'this.getTest();'
		withContext: BabelTestContext new.
	