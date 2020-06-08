"
https://github.com/babel/babel/blob/master/doc/ast/spec.md#classmethod

interface ClassMethod <: Node {
  type: ""ClassMethod"";
  key: Expression;
  value: FunctionExpression;
  kind: ""constructor"" | ""method"" | ""get"" | ""set"";
  computed: boolean;
  static: boolean;
  decorators: [ Decorator ];
}
"
Class {
	#name : #BabelClassMethod,
	#superclass : #BabelNode,
	#instVars : [
		'key',
		'body',
		'kind',
		'computed',
		'static',
		'decorators',
		'params'
	],
	#category : 'BabelSt-AST'
}

{ #category : #kind }
BabelClassMethod class >> CONSTRUCTOR_KIND [
	^ 'constructor'
]

{ #category : #kind }
BabelClassMethod class >> GET_KIND [
	^ 'get'
]

{ #category : #kind }
BabelClassMethod class >> METHOD_KIND [
	^ 'method'
]

{ #category : #kind }
BabelClassMethod class >> SET_KIND [
	^ 'set'
]

{ #category : #visiting }
BabelClassMethod >> accept: aVisitor [
	aVisitor visitClassMethod: self
]

{ #category : #accessing }
BabelClassMethod >> body [
	^ body
]

{ #category : #accessing }
BabelClassMethod >> body: anObject [
	body := anObject
]

{ #category : #accessing }
BabelClassMethod >> computed [
	^ computed
]

{ #category : #accessing }
BabelClassMethod >> computed: anObject [
	computed := anObject
]

{ #category : #accessing }
BabelClassMethod >> decorators [
	^ decorators
]

{ #category : #accessing }
BabelClassMethod >> decorators: anObject [
	decorators := anObject
]

{ #category : #'initialize-release' }
BabelClassMethod >> initialize [
	super initialize.
	key := BabelIdentifier new.
	body := BabelBlockStatement new.
	kind := self class METHOD_KIND.
	computed := false.
	static := false.
	decorators := BabelObjectCollection new.
	params := BabelObjectCollection new
]

{ #category : #accessing }
BabelClassMethod >> key [
	^ key
]

{ #category : #accessing }
BabelClassMethod >> key: anObject [
	key := anObject
]

{ #category : #accessing }
BabelClassMethod >> kind [
	^ kind
]

{ #category : #accessing }
BabelClassMethod >> kind: anObject [
	kind := anObject
]

{ #category : #accessing }
BabelClassMethod >> params [
	^ params
]

{ #category : #accessing }
BabelClassMethod >> params: anObject [
	params := anObject
]

{ #category : #accessing }
BabelClassMethod >> static [
	^ static
]

{ #category : #accessing }
BabelClassMethod >> static: anObject [
	static := anObject
]
