accessing
context
	^ context ifNil: [ context := self class defaultContextClass new ]