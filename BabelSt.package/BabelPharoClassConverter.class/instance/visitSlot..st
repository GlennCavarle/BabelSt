visiting-class
visitSlot: aSlot
	| attr |
	self context currentProperty: aSlot.
	attr := BabelClassProperty new.
	attr key name: aSlot name.
	attr value: nil.
	self stack push: attr.
	^ attr