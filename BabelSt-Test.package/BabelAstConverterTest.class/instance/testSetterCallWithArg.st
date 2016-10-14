as yet unclassified
testSetterCallWithArg
	self 
		assertSt: 'self test: test1' 
		compiledTo:'this.setTest(test1);'
		withContext: BabelTestContext new.
	