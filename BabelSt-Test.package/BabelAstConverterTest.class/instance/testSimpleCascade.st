as yet unclassified
testSimpleCascade
	self 
		assertSt: 'self test1: test; test2: test' 
		compiledTo:'this.test1_(test);',String lf,'this.test2_(test);'
		withContext: BabelTestContext new.
	