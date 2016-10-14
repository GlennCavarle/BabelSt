initialize-release
initialize
	super initialize.
	discriminant := BabelExpression new.
	cases := BabelObjectCollection new