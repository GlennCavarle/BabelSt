Class {
	#name : #BabelPharoASTConverter,
	#superclass : #RBProgramNodeVisitor,
	#instVars : [
		'stack',
		'context'
	],
	#category : 'BabelSt-Converter'
}

{ #category : #'as yet unclassified' }
BabelPharoASTConverter class >> defaultContextClass [
	^ BabelDummyContext
]

{ #category : #'as yet unclassified' }
BabelPharoASTConverter class >> exportPharoExpression: aString [
	^ self exportPharoExpression: aString context: nil
]

{ #category : #'as yet unclassified' }
BabelPharoASTConverter class >> exportPharoExpression: aString context: aContext [
	^ self exportPharoProgram: (RBParser parseExpression: aString) context: aContext.
	
]

{ #category : #'as yet unclassified' }
BabelPharoASTConverter class >> exportPharoProgram: aNode [
	^ self exportPharoProgram: aNode context: nil
]

{ #category : #'as yet unclassified' }
BabelPharoASTConverter class >> exportPharoProgram: aNode context: aContext [
	| file anAst|
	anAst := aNode.
	file := BabelFile new.
	[ anAst parent isNotNil ] whileTrue: [ anAst := anAst parent ].
	file program body: (self parsePharoProgram: anAst context: aContext).
	^ file
]

{ #category : #'as yet unclassified' }
BabelPharoASTConverter class >> parsePharoExpression: aString [
	^ self parsePharoExpression: aString context: nil
]

{ #category : #'as yet unclassified' }
BabelPharoASTConverter class >> parsePharoExpression: aString context: aContext [
	^ self parsePharoProgram: (RBParser parseExpression: aString) context: aContext
]

{ #category : #'as yet unclassified' }
BabelPharoASTConverter class >> parsePharoProgram: aNode [
	^ self parsePharoProgram: aNode context: nil
]

{ #category : #'as yet unclassified' }
BabelPharoASTConverter class >> parsePharoProgram: aNode context: aContext [
	^ (self new
		context: aContext;
		visitNode: aNode;
		stack) top
]

{ #category : #accessing }
BabelPharoASTConverter >> context [
	^ context ifNil: [ context := self class defaultContextClass new ]
]

{ #category : #accessing }
BabelPharoASTConverter >> context: anObject [
	context := anObject
]

{ #category : #converting }
BabelPharoASTConverter >> convertAccessorSelector: aSelector [
	(self context isSetterAccessor: aSelector)
		ifTrue: [ ^ 'set' , (aSelector copyReplaceAll: #($:) with: #()) asCamelCase ].
	(self context isGetterAccessor: aSelector)
		ifTrue: [ ^ 'get' , (aSelector copyReplaceAll: #($:) with: #()) asCamelCase ].
	^ aSelector endsWithAColon
		ifTrue: [ aSelector allButLast asSymbol ]
		ifFalse: [ aSelector ]
]

{ #category : #converting }
BabelPharoASTConverter >> convertIfReservedSelector: aSelector [
	| reserved |
	reserved := {(#class -> #constructor)} asDictionary.
	reserved at: aSelector ifPresent: [ :s | ^ s ].
	^ aSelector
]

{ #category : #converting }
BabelPharoASTConverter >> convertMethodSelector: aSelector [
|theSelector|
	aSelector first isSpecial
		ifTrue: [ ^ self convertSpecialMethodSelector: aSelector ].
	(self context isAccessor: aSelector)
		ifTrue: [ ^ self convertAccessorSelector: aSelector ].
		theSelector := self convertIfReservedSelector: aSelector.
	^ ('@' , theSelector copyReplaceAll: #($:) with: #($_)) asCamelCase copyWithout: $@
]

{ #category : #converting }
BabelPharoASTConverter >> convertSpecialMethodSelector: aSelector [
	aSelector = '/'
		ifTrue: [ ^ '+ ''/''+' ].
	aSelector = ','
		ifTrue: [ ^ BabelBinaryOperator PLUS ].
	aSelector = '='
		ifTrue: [ ^ BabelBinaryOperator DOUBLE_EQUAL  ].
	aSelector = '=='
		ifTrue: [ ^ BabelBinaryOperator TRIPLE_EQUAL ].
	^ aSelector
]

{ #category : #creating }
BabelPharoASTConverter >> createBlockFunction [
	| expr |
	expr := BabelFunctionExpression new.
	expr extra parenthesized: true.
	^ expr
]

{ #category : #creating }
BabelPharoASTConverter >> createIIFE [
	| expr |
	expr := BabelCallExpression new.
	expr callee: self createBlockFunction.
	^ expr
]

{ #category : #accessing }
BabelPharoASTConverter >> stack [
	^ stack ifNil: [ stack := Stack new ]
]

{ #category : #accessing }
BabelPharoASTConverter >> stack: anObject [
	stack := anObject
]

{ #category : #'visiting-ast' }
BabelPharoASTConverter >> visitAccessorMessage: aMessageNode [
	^ self visitCallMessage: aMessageNode
]

{ #category : #'visiting-ast' }
BabelPharoASTConverter >> visitArrayNode: anArrayNode [ 
	| expr |
	expr := BabelArrayExpression new.
	anArrayNode children
		do: [ :each | 
			self visitNode: each.
			expr elements add: self stack pop ].
	self stack push: expr.
	^ expr

]

{ #category : #'visiting-ast' }
BabelPharoASTConverter >> visitAssignmentNode: anAssignmentNode [
	| stmt an |
	stmt := BabelExpressionStatement new.
	an := BabelAssignmentExpression new.
	stmt expression: an.
	an operator: BabelAssignmentOperator EQUAL.
	self visitNode: anAssignmentNode variable.
	an left: self stack pop.
	self visitNode: anAssignmentNode value.
	an right: self stack pop.
	self stack push: stmt.
	^ stmt
]

{ #category : #'visiting-ast' }
BabelPharoASTConverter >> visitBinaryMessage: aMessageNode [
	| expr |
	expr := BabelBinaryExpression new.
	expr operator: (self convertSpecialMethodSelector: aMessageNode selector).
	self visitMessageReceiverNode: aMessageNode receiver.
	expr left: self stack pop.
	self visitNode: aMessageNode arguments first.
	expr right: self stack pop.
	self stack push: expr.
	self context currentReceiver: nil.
	^ expr
]

{ #category : #'visiting-ast' }
BabelPharoASTConverter >> visitBlockArgumentNode: aSymbol [
	| arg |
	arg := BabelIdentifier new.
	arg name: aSymbol.
	self stack push: arg.
	^ arg
	
	
]

{ #category : #'visiting-ast' }
BabelPharoASTConverter >> visitBlockNode: aBlockNode [
	| expr |
	expr := self createBlockFunction.
	aBlockNode argumentNames
		do:
			[ :each | 
			self visitBlockArgumentNode: each.
			expr params add: self stack pop ].
	self visitNode: aBlockNode body.
	expr body body: self stack pop.
	aBlockNode parent isSequence
		ifTrue: [ expr := BabelExpressionStatement new
				expression: expr;
				yourself ].
	self stack push: expr.
	^ expr
]

{ #category : #'visiting-ast' }
BabelPharoASTConverter >> visitCallMessage: aMessageNode [
	| expr rcv |
	expr := BabelCallExpression new.
	self visitMessageReceiverNode: aMessageNode receiver.
	rcv := self stack pop.
	self visitMessageArgumentsNode: aMessageNode arguments.
	expr arguments: self stack pop.
	expr callee: BabelMemberExpression new.
	expr callee
		property: (BabelIdentifier new name: (self convertMethodSelector: aMessageNode selector)).
	expr callee object: rcv.
	self stack push: expr.
	self context currentReceiver: nil.
	^ expr
]

{ #category : #'visiting-ast' }
BabelPharoASTConverter >> visitCascadeNode: aCascadeNode [
	| seq |
	seq := BabelObjectCollection new.
	aCascadeNode messages do: [ :each | 
			self visitNode: each.
			seq add: self stack pop ].
	self stack push: seq.
	^ seq
]

{ #category : #'visiting-ast' }
BabelPharoASTConverter >> visitIfFalseBlock: aBlockNode [
	| stmt |
	stmt := BabelBlockStatement new.
	self stack push: stmt.
	^ stmt
]

{ #category : #'visiting-ast' }
BabelPharoASTConverter >> visitIfMessage: aMessageNode [
	| stmt |
	stmt := BabelIfStatement new.
	self visitMessageReceiverNode: aMessageNode receiver.
	stmt test: self stack pop.
	self visitIfTrueBlock: aMessageNode arguments first.
	stmt consequent: self stack pop.
	aMessageNode arguments size = 2 ifTrue:
			[ self visitIfFalseBlock: aMessageNode arguments second.
			stmt alternate: self stack pop ].
	self stack push: stmt.
	self context currentReceiver: nil.
	^ stmt
]

{ #category : #'visiting-ast' }
BabelPharoASTConverter >> visitIfTrueBlock: aBlockNode [
	|stmt|
	stmt := BabelBlockStatement new.
	self visitTemporaryNodes: aBlockNode temporaries.
	self stack top declarations ifNotEmpty: [ stmt body add: self stack pop].
	 
	"self visitBlockArgumentNodes: aBlockNode arguments."
	"self stack pop ifNotEmpty: [:v | stmt body add: v]."
	
	self visitNode: aBlockNode body.
	self stack push: stmt.
	^ stmt
]

{ #category : #'visiting-ast' }
BabelPharoASTConverter >> visitInstanceVariableNode: aSelfNode [
	| expr |
	expr := BabelMemberExpression new.
	expr object: BabelThisExpression new.
	self visitVariableNode: aSelfNode.
	expr property: self stack pop.
	self stack push: expr.
	^ expr
]

{ #category : #'visiting-ast' }
BabelPharoASTConverter >> visitLiteralArrayNode: aRBLiteralArrayNode [
	| expr |
	expr := BabelArrayExpression new.
	aRBLiteralArrayNode contents
		do: [ :each | 
			self visitNode: each.
			expr elements add: self stack pop ].
	self stack push: expr.
	^ expr
]

{ #category : #'visiting-ast' }
BabelPharoASTConverter >> visitLiteralNode: aLiteralNode [
	| v |
	v := aLiteralNode value isNumber
		ifTrue: [ BabelNumericLiteral new ]
		ifFalse: [ BabelStringLiteral new ].
	v value: aLiteralNode value.
	self stack push: v.
	^ v
]

{ #category : #'visiting-ast' }
BabelPharoASTConverter >> visitMessageArgumentsNode: aCollection [
	| args |
	args := BabelObjectCollection new.
	aCollection do: [ :each | 
			self visitNode: each.
			args add: self stack pop ].
	self stack push: args.
	^ args
]

{ #category : #'visiting-ast' }
BabelPharoASTConverter >> visitMessageNode: aMessageNode [
	| expr |
	aMessageNode isBinary
		ifTrue: [ ^ self visitBinaryMessage: aMessageNode ].
	aMessageNode isInlineIf
		ifTrue: [ ^ self visitIfMessage: aMessageNode ].
	aMessageNode isInlineWhile
		ifTrue: [ ^ self visitWhileMessage: aMessageNode ].
	(self context isAccessor: aMessageNode selector)
		ifTrue: [ expr := self visitAccessorMessage: aMessageNode ]
		ifFalse: [ expr := self visitCallMessage: aMessageNode ].
	(aMessageNode parent isSequence or: [ aMessageNode parent isCascade ]) ifTrue: [
		   expr := BabelExpressionStatement new.
			expr expression: self stack pop.
			self stack push: expr ].
	self context currentReceiver: nil.
	^ expr
]

{ #category : #'visiting-ast' }
BabelPharoASTConverter >> visitMessageReceiverNode: aReceiverNode [
	self context currentReceiver: aReceiverNode.
	^ self visitNode: aReceiverNode.
	
]

{ #category : #'visiting-ast' }
BabelPharoASTConverter >> visitMethodNode: aMethodNode [
	self visitArgumentNodes: aMethodNode arguments.
	aMethodNode pragmas do: [ :each | self visitNode: each ].
	self visitNode: aMethodNode body.
	^ self stack top
]

{ #category : #'visiting-ast' }
BabelPharoASTConverter >> visitReturnNode: aReturnNode [
	| retStmt |
	retStmt := BabelReturnStatement new.
	self visitNode: aReturnNode value.
	retStmt argument: self stack pop.
	self stack push: retStmt.
	^ retStmt
]

{ #category : #'visiting-ast' }
BabelPharoASTConverter >> visitSelfNode: aSelfNode [
	| expr |
	expr := BabelThisExpression new.
	self stack push: expr.
	^ expr
]

{ #category : #'visiting-ast' }
BabelPharoASTConverter >> visitSequenceNode: aSequenceNode [
	| seq tmp |
	seq := BabelObjectCollection new.
	self visitTemporaryNodes: aSequenceNode temporaries.
	tmp := self stack pop.
	tmp declarations ifNotEmpty: [ seq add: tmp ].
	aSequenceNode statements do: [ :each | 
		|val|
			self visitNode: each.
			val := self stack pop .
			val isCollection
				ifTrue: [ seq addAll: val ]
				ifFalse: [ seq add: val ] ].
	self stack push: seq.
	^ seq
]

{ #category : #'visiting-ast' }
BabelPharoASTConverter >> visitTemporaryNode: aNode [
	| tmp |
	tmp := BabelVariableDeclarator new.
	tmp id name: aNode name.
	self stack push: tmp.
	^tmp
]

{ #category : #'visiting-ast' }
BabelPharoASTConverter >> visitTemporaryNodes: aNodeCollection [
	| decl |
	decl := BabelVariableDeclaration new.
	aNodeCollection
		do: [ :each | 
			self visitNode: each.
			decl declarations add: self stack pop ].
	self stack push: decl.
	^ decl
	
]

{ #category : #'visiting-ast' }
BabelPharoASTConverter >> visitVariableNode: aVariableNode [
	| ident |
	ident := BabelIdentifier new name: aVariableNode name.
	self stack push: ident.
	^ ident
]

{ #category : #'visiting-ast' }
BabelPharoASTConverter >> visitWhileMessage: aMessageNode [
	self context currentReceiver: nil
]
