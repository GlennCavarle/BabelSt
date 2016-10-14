as yet unclassified
testArray
	self 
		assertSt: '{other test. 2. Object. #ello.}' 
		compiledTo:'[other.test(), 2, Object, "ello"]'
		withContext: BabelTestContext new.
	