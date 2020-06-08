as yet unclassified
testDecorator
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
	