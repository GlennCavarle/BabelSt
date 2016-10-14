as yet unclassified
testThisMethodCall
	self 
		assertSt: 'self test' 
		compiledTo:'this.getTest();'
		withContext: BabelTestContext new.
		
	