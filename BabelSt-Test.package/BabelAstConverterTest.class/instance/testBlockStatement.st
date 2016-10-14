as yet unclassified
testBlockStatement
	
	self 
		assertSt: '[:arg| ^ arg +1 ]' 
		compiledTo:
'(function (arg) {
  return arg + 1;
});'
		withContext: BabelTestContext new.
	