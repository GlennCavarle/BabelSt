converting
convertSpecialMethodSelector: aSelector
	aSelector = '/'
		ifTrue: [ ^ '+ ''/''+' ].
	aSelector = ','
		ifTrue: [ ^ BabelBinaryOperator PLUS ].
	aSelector = '='
		ifTrue: [ ^ BabelBinaryOperator DOUBLE_EQUAL  ].
	aSelector = '=='
		ifTrue: [ ^ BabelBinaryOperator TRIPLE_EQUAL ].
	^ aSelector