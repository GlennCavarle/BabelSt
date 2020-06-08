Class {
	#name : #BabelASTConverter,
	#superclass : #BabelASTVisitor,
	#instVars : [
		'stack',
		'currentScope'
	],
	#category : 'BabelSt-Converter'
}

{ #category : #'as yet unclassified' }
BabelASTConverter class >> parseBabelProgram: babelAst [
	| pharoAstNodes |
	pharoAstNodes := (self new visit: babelAst) stack asOrderedCollection reversed.
	pharoAstNodes size = 1
		ifTrue: [ ^ pharoAstNodes first ].
	^ RBSequenceNode statements: pharoAstNodes
]

{ #category : #converting }
BabelASTConverter >> convertIdentifier: aString [
	| jsClass jsClassName |
	jsClassName := (#BabelStd , aString) asSymbol.
	jsClass := Smalltalk at: jsClassName ifAbsent: [ ^ aString asSymbol ].
	^ jsClass name
]

{ #category : #converting }
BabelASTConverter >> convertOperator: anOperator [
	^ anOperator
]

{ #category : #converting }
BabelASTConverter >> convertSelector: aSelector args: aCollection receiver: anObject [
	^ aSelector asSymbol numArgs: aCollection size
]

{ #category : #accessing }
BabelASTConverter >> currentScope [
	^ currentScope ifNil: [ currentScope := BabelTypeScope new ]
]

{ #category : #accessing }
BabelASTConverter >> currentScope: anObject [
	currentScope := anObject
]

{ #category : #accessing }
BabelASTConverter >> stack [
	^ stack ifNil: [ stack := Stack new ]
]

{ #category : #accessing }
BabelASTConverter >> stack: anObject [
	stack := anObject
]

{ #category : #'visiting-expression' }
BabelASTConverter >> visitArrayExpression: aNode [
	| stNode |
	stNode := RBArrayNode new.
	stNode statements: OrderedCollection new.
	aNode elements
		do: [ :each | 
			self visit: each.
			stNode statements add: self stack pop ].
	self stack push: stNode
]

{ #category : #'visiting-expression' }
BabelASTConverter >> visitAssignmentExpression: aNode [
	|stNode|
	stNode := RBAssignmentNode new.
	self visit: aNode left.
	stNode variable: self stack pop.
	self visit: aNode right.
	stNode value: self stack pop.
	self stack push: stNode
	
	
]

{ #category : #'visiting-expression' }
BabelASTConverter >> visitBinaryExpression: aNode [
	| stNode |
	stNode := RBMessageNode new.
	stNode selector: (self convertOperator: aNode operator).
	self visit: aNode left.
	stNode receiver: self stack pop.
	self visit: aNode right.
	stNode arguments:{self stack pop}.
	self stack push: stNode
]

{ #category : #'visiting-statement' }
BabelASTConverter >> visitBlockStatement: aNode [
	|stNode|
	stNode := RBSequenceNode new.
	aNode body do:[:each| self visit: each. stNode addNode: self stack pop].
	self stack push: stNode
]

{ #category : #'as yet unclassified' }
BabelASTConverter >> visitCallExpression: aNode [
	| stNode args |
	stNode := RBMessageNode new.
	args := OrderedCollection new.
	self visit: aNode callee object.
	stNode receiver: self stack pop.
	stNode selector:  (self convertSelector: aNode callee property name args: aNode arguments receiver: stNode receiver).
	aNode arguments
		do: [ :each | 
			self visit: each.
			args add: self stack pop ].
	stNode arguments:args.
	self stack push: stNode
]

{ #category : #'visiting-expression' }
BabelASTConverter >> visitFunctionExpression: aNode [
	| stNode body args |
	args := OrderedCollection new.
	self visit: aNode body.
	body := self stack pop.
	aNode params
		do: [ :each | 
			self visit: each.
			args add: self stack pop ].
	stNode := RBBlockNode arguments: args body:body.
	self stack push: stNode
]

{ #category : #'as yet unclassified' }
BabelASTConverter >> visitIdentifier: aNode [
	| val stNode |
	val := self convertIdentifier: aNode name.
	stNode := RBVariableNode named: val.
	self stack push: stNode
]

{ #category : #'as yet unclassified' }
BabelASTConverter >> visitLiteral: aNode [
	| stNode |
	stNode := RBLiteralValueNode value: aNode value.
	self stack push: stNode
]

{ #category : #'visiting-expression' }
BabelASTConverter >> visitMemberExpression: aNode [
	| stNode  |
	stNode := RBMessageNode new.
	stNode arguments: OrderedCollection new.
	self visit: aNode object.
	stNode receiver: self stack pop.
	stNode selector: aNode property name.
	self stack push: stNode
]

{ #category : #'as yet unclassified' }
BabelASTConverter >> visitNewExpression: aNode [
	| stNode theSelector |
	stNode := RBMessageNode new.
	stNode arguments: OrderedCollection new.
	theSelector := aNode arguments ifEmpty: [ #new ] ifNotEmpty: [ #new: ].
	stNode selector: theSelector.
	self visit: aNode callee.
	stNode receiver: self stack pop.
	aNode arguments
		do: [ :each | 
			self visit: each.
			stNode arguments add: self stack pop ].
	self stack push: stNode
]

{ #category : #'as yet unclassified' }
BabelASTConverter >> visitThisExpression: aNode [
	| stNode |
	stNode := RBSelfNode named:#self.
	self stack push: stNode
]

{ #category : #'visiting-declaration' }
BabelASTConverter >> visitVariableDeclaration: aNode [
	aNode declarations do: [ :each | each accept: self ]
]

{ #category : #'visiting-declaration' }
BabelASTConverter >> visitVariableDeclarator: aNode [
	| stNode |
	stNode := RBVariableNode named: aNode id name.
	aNode init
		ifNotNil: [ :i | 
			i accept: self.
			stNode := RBAssignmentNode variable: stNode value: self stack pop ].
	self stack push: stNode
]
