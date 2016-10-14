visiting-class
visitClass: aClassNode
	aClassNode allSlots do: [ :aSlot | self visitSlot: aSlot ].
	aClassNode methods do: [ :aMeth | self visitCompiledMethod: aMeth ].
	aClassNode  classVariables do: [ :aSlot | self visitClassVariable: aSlot ].
	aClassNode class methods do: [ :aMeth | self visitClassCompiledMethod: aMeth ]