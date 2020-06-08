Class {
	#name : #BabelPharoClassConverter,
	#superclass : #BabelPharoASTConverter,
	#traits : 'TBabelPharoClassVisitor',
	#classTraits : 'TBabelPharoClassVisitor classTrait',
	#category : 'BabelSt-Converter'
}

{ #category : #'as yet unclassified' }
BabelPharoClassConverter class >> defaultContextClass [
	^ BabelPharoContext
]

{ #category : #'as yet unclassified' }
BabelPharoClassConverter class >> exportPharoClass: aClass [
	^ self exportPharoClass: aClass context: nil
]

{ #category : #'as yet unclassified' }
BabelPharoClassConverter class >> exportPharoClass: aClass context: aContext [
	| file |
	file := BabelFile new.
	file filename: aClass name , '.js'.
	file program body add: (self parsePharoClass: aClass context: aContext).
	^ file
]

{ #category : #'as yet unclassified' }
BabelPharoClassConverter class >> parsePharoClass: aClass [
	^ self parsePharoClass: aClass context: nil
]

{ #category : #'as yet unclassified' }
BabelPharoClassConverter class >> parsePharoClass: aClass context: aContext [
	^ self new
		context: aContext;
		visitClass: aClass
]

{ #category : #'as yet unclassified' }
BabelPharoClassConverter class >> pharoClassToJs: aClass context: aContext [
	| file |
	file := self exportPharoClass: aClass context: nil.
	^ (BabelCompiler compileToES6: file) at: 1
]

{ #category : #'visiting-class' }
BabelPharoClassConverter >> visitClass: aClassNode [
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
]

{ #category : #'visiting-class' }
BabelPharoClassConverter >> visitClassCompiledMethod: aMeth [
	| meth |
	self context currentMethod: aMeth.
	meth := BabelClassMethod new.
	meth static: true.
	meth key name: (self convertMethodSelector: aMeth selector).
	aMeth argumentNames
		do: [ :each | 
			self visitMethodArgument: each.
			meth params add: self stack pop ].
	self visitNode: aMeth ast body.
	meth body body: self stack pop.
	self stack push: meth
]

{ #category : #'visiting-class' }
BabelPharoClassConverter >> visitClassVariable: aSlot [
	| attr |
	self context currentProperty: aSlot.
	attr := BabelClassProperty new.
	attr key name: aSlot name.
	attr static:true.
	attr value: nil.
	self stack push: attr.
	^  attr
]

{ #category : #'visiting-class' }
BabelPharoClassConverter >> visitCompiledMethod: aMeth [
	| meth |
	self context currentMethod: aMeth.
	meth := BabelClassMethod new.
	meth key name: (self convertMethodSelector: aMeth selector).
	aMeth argumentNames
		do: [ :each | 
			self visitMethodArgument: each.
			meth params add: self stack pop ].
	self visitNode: aMeth ast body.
	meth body body: self stack pop.
	self stack push: meth.
	^ meth
]

{ #category : #'visiting-class' }
BabelPharoClassConverter >> visitMethodArgument: aSymbol [
	| arg |
	arg := BabelIdentifier new.
	arg name: aSymbol.
	self stack push: arg.
	^ arg
]

{ #category : #'visiting-class' }
BabelPharoClassConverter >> visitSlot: aSlot [
	| attr |
	self context currentProperty: aSlot.
	attr := BabelClassProperty new.
	attr key name: aSlot name.
	attr value: nil.
	self stack push: attr.
	^ attr
]
