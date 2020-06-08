"
https://github.com/babel/babel/blob/master/doc/ast/spec.md#classproperty

interface ClassProperty <: Node {
  type: ""ClassProperty"";
  key: Identifier;
  value: Expression;
}
"
Class {
	#name : #BabelClassProperty,
	#superclass : #BabelNode,
	#instVars : [
		'key',
		'value',
		'static'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelClassProperty >> accept: aVisitor [
	aVisitor visitClassProperty: self
]

{ #category : #'initialize-release' }
BabelClassProperty >> initialize [
	super initialize.
	key := BabelIdentifier new.
	value := BabelExpression new.
	static := false.
]

{ #category : #accessing }
BabelClassProperty >> key [
	^ key
]

{ #category : #accessing }
BabelClassProperty >> key: anObject [
	key := anObject
]

{ #category : #accessing }
BabelClassProperty >> static [
	^ static
]

{ #category : #accessing }
BabelClassProperty >> static: anObject [
	static := anObject
]

{ #category : #accessing }
BabelClassProperty >> value [
	^ value
]

{ #category : #accessing }
BabelClassProperty >> value: anObject [
	value := anObject
]
