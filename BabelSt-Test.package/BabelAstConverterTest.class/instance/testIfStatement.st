as yet unclassified
testIfStatement
	
	self 
		assertSt: 'test ifTrue:[|t1 t2|] ifFalse:[]' 
		compiledTo:
'if (test) {
  var t1, t2;
} else {}'.
	