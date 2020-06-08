Trait {
	#name : #TBabelPharoClassVisitor,
	#category : 'BabelSt-Visitor'
}

{ #category : #'visiting-class' }
TBabelPharoClassVisitor >> visitClass: aClassNode [
	aClassNode allSlots do: [ :aSlot | self visitSlot: aSlot ].
	aClassNode methods do: [ :aMeth | self visitCompiledMethod: aMeth ].
	aClassNode  classVariables do: [ :aSlot | self visitClassVariable: aSlot ].
	aClassNode class methods do: [ :aMeth | self visitClassCompiledMethod: aMeth ]
]

{ #category : #'visiting-class' }
TBabelPharoClassVisitor >> visitClassCompiledMethod: aMeth [
	aMeth argumentNames do: [ :each | self visitMethodArgument: each].
	self visitNode: aMeth ast body.
]

{ #category : #'visiting-class' }
TBabelPharoClassVisitor >> visitClassVariable: aSlot [
	
]

{ #category : #'visiting-class' }
TBabelPharoClassVisitor >> visitCompiledMethod: aMeth [
	aMeth argumentNames do: [ :each | self visitMethodArgument: each].
	self visitNode: aMeth ast body.
]

{ #category : #'visiting-class' }
TBabelPharoClassVisitor >> visitMethodArgument: aSymbol [
	
]

{ #category : #'visiting-class' }
TBabelPharoClassVisitor >> visitSlot: aSlot [
	
]
