visiting-class
visitClass: aClassNode
	| cls |
	self context currentClass: aClassNode.
	cls := BabelClassDeclaration new.
	cls id name: aClassNode name.
	self stack push: cls.
	
	aClassNode allSlots do: [ :aSlot | 
			self visitSlot: aSlot.
			cls body body add: self stack pop ].
		
	aClassNode methods do: [ :aMeth | 
			self visitCompiledMethod: aMeth.
			cls body body add: self stack pop ].
		
	aClassNode classVariables  do: [ :aSlot | 
			self visitClassVariable: aSlot.
			cls body body add: self stack pop ].
		
	aClassNode class methods do: [ :aMeth | 
			self visitClassCompiledMethod: aMeth.
			cls body body add: self stack pop ].
	^ cls