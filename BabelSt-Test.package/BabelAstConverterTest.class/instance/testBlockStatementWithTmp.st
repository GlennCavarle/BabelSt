as yet unclassified
testBlockStatementWithTmp
	
	self 
		assertSt: '[:arg| |v1 v2| ^ arg +1 ]' 
		compiledTo:
'(function (arg) {
  var v1, v2;
  return arg + 1;
});'
		withContext: BabelTestContext new.
	