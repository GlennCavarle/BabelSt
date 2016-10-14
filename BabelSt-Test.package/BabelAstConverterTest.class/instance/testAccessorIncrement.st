as yet unclassified
testAccessorIncrement
	self 
		assertSt: 'self test: self test + 1' 
		compiledTo:'this.setTest(this.getTest() + 1);'
		withContext: BabelTestContext new.
	