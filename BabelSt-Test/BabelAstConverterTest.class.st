Class {
	#name : #BabelAstConverterTest,
	#superclass : #BabelAbstractTest,
	#category : 'BabelSt-Test-Converter'
}

{ #category : #'as yet unclassified' }
BabelAstConverterTest >> testAccessorIncrement [
	self 
		assertSt: 'self test: self test + 1' 
		compiledTo:'this.setTest(this.getTest() + 1);'
		withContext: BabelTestContext new.
	
]

{ #category : #'as yet unclassified' }
BabelAstConverterTest >> testArray [
	self 
		assertSt: '{other test. 2. Object. #ello.}' 
		compiledTo:'[other.test(), 2, Object, "ello"]'
		withContext: BabelTestContext new.
	
]

{ #category : #'as yet unclassified' }
BabelAstConverterTest >> testBlockStatement [
	
	self 
		assertSt: '[:arg| ^ arg +1 ]' 
		compiledTo:
'(function (arg) {
  return arg + 1;
});'
		withContext: BabelTestContext new.
	
]

{ #category : #'as yet unclassified' }
BabelAstConverterTest >> testBlockStatementWithTmp [
	
	self 
		assertSt: '[:arg| |v1 v2| ^ arg +1 ]' 
		compiledTo:
'(function (arg) {
  var v1, v2;
  return arg + 1;
});'
		withContext: BabelTestContext new.
	
]

{ #category : #'as yet unclassified' }
BabelAstConverterTest >> testDecorator [
	|decorator|
	decorator := BabelDecorator new
		expression: (BabelCallExpression new 
			callee: (BabelIdentifier new name: 'Component');
			arguments: (BabelObjectExpression new 
				properties:(BabelObjectCollection newFrom: {
					BabelObjectProperty new
						key: (BabelIdentifier new name: 'dummyKey');
						value: (BabelStringLiteral new value:'DummyValue')
				})
			)
		);
		yourself.
		
		decorator asJsonString
	
]

{ #category : #'as yet unclassified' }
BabelAstConverterTest >> testGetterCall [
	self 
		assertSt: 'self test' 
		compiledTo:'this.getTest();'
		withContext: BabelTestContext new.
	
]

{ #category : #'as yet unclassified' }
BabelAstConverterTest >> testIfStatement [
	
	self 
		assertSt: 'test ifTrue:[|t1 t2|] ifFalse:[]' 
		compiledTo:
'if (test) {
  var t1, t2;
} else {}'.
	
]

{ #category : #'as yet unclassified' }
BabelAstConverterTest >> testLiteralArray [
	self 
		assertSt: '#(1 2 3 #ello)' 
		compiledTo:'[1, 2, 3, "ello"]'.
	
]

{ #category : #'as yet unclassified' }
BabelAstConverterTest >> testSetterCallWithArg [
	self 
		assertSt: 'self test: test1' 
		compiledTo:'this.setTest(test1);'
		withContext: BabelTestContext new.
	
]

{ #category : #'as yet unclassified' }
BabelAstConverterTest >> testSimpleCascade [
	self 
		assertSt: 'self test1: test; test2: test' 
		compiledTo:'this.test1_(test);',String lf,'this.test2_(test);'
		withContext: BabelTestContext new.
	
]

{ #category : #'as yet unclassified' }
BabelAstConverterTest >> testStringAssignment [
	self 
		assertSt: 'test1 := ''hello''' 
		compiledTo:'test1 = "hello";'.
	
]

{ #category : #'as yet unclassified' }
BabelAstConverterTest >> testSuperCall [
	
	self 
		assertSt: 'super test' 
		compiledTo:'super.test();'
		withContext: BabelTestContext new.
	
]

{ #category : #'as yet unclassified' }
BabelAstConverterTest >> testTemporaryStatement [
	self 
		assertSt: '|test1 test2 |' 
		compiledTo:'var test1, test2;'.
	
]

{ #category : #'as yet unclassified' }
BabelAstConverterTest >> testThisMethodCall [
	self 
		assertSt: 'self test' 
		compiledTo:'this.getTest();'
		withContext: BabelTestContext new.
		
	
]

{ #category : #'as yet unclassified' }
BabelAstConverterTest >> testThisMethodCallWithArg [
	self 
		assertSt: 'self test: test1' 
		compiledTo:'this.setTest(test1);'
		withContext: BabelTestContext new.
	
]
