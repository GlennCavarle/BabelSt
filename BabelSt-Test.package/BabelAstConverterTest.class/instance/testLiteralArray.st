as yet unclassified
testLiteralArray
	self 
		assertSt: '#(1 2 3 #ello)' 
		compiledTo:'[1, 2, 3, "ello"]'.
	