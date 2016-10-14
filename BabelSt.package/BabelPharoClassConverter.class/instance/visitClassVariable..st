visiting-class
visitClassVariable: aSlot
	| attr |
	self context currentProperty: aSlot.
	attr := BabelClassProperty new.
	attr key name: aSlot name.
	attr static:true.
	attr value: nil.
	self stack push: attr.
	^  attr