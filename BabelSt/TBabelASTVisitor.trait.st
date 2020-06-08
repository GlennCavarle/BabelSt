Trait {
	#name : #TBabelASTVisitor,
	#category : 'BabelSt-Visitor'
}

{ #category : #visiting }
TBabelASTVisitor >> visit: anObject [
	anObject ifNil: [ ^ self ].
	anObject accept: self
]

{ #category : #'visiting-expression' }
TBabelASTVisitor >> visitArrayExpression: aNode [
	self visitExpression: aNode
]

{ #category : #'visiting-pattern' }
TBabelASTVisitor >> visitArrayPattern: aNode [
	self visitPattern: aNode
]

{ #category : #'visiting-expression' }
TBabelASTVisitor >> visitArrowFunctionExpression: aNode [
	self visitExpression: aNode
]

{ #category : #'visiting-expression' }
TBabelASTVisitor >> visitAssignmentExpression: aNode [
	self visitExpression: aNode
]

{ #category : #'visiting-pattern' }
TBabelASTVisitor >> visitAssignmentPattern: aNode [
	self visitPattern: aNode
]

{ #category : #'visiting-property' }
TBabelASTVisitor >> visitAssignmentProperty: aNode [
	self visitObjectProperty: aNode
]

{ #category : #'visiting-expression' }
TBabelASTVisitor >> visitAwaitExpression: aNode [
	self visitExpression: aNode
]

{ #category : #'visiting-expression' }
TBabelASTVisitor >> visitBinaryExpression: aNode [
	self visitExpression: aNode
]

{ #category : #'visiting-expression' }
TBabelASTVisitor >> visitBindExpression: aNode [
	self visitExpression: aNode
]

{ #category : #'visiting-statement' }
TBabelASTVisitor >> visitBlockStatement: aNode [
	self visitStatement: aNode
]

{ #category : #'visiting-literal' }
TBabelASTVisitor >> visitBooleanLiteral: aNode [
	self visitLiteral: aNode
]

{ #category : #'visiting-statement' }
TBabelASTVisitor >> visitBreakStatement: aNode [
	self visitStatement: aNode
]

{ #category : #'visiting-expression' }
TBabelASTVisitor >> visitCallExpression: aNode [
	self visit: aNode callee.
	aNode arguments do: [ :each | self visit: each ]
]

{ #category : #'visiting-clause' }
TBabelASTVisitor >> visitCatchClause: aNode [
	self visitNode: aNode
]

{ #category : #'visiting-class' }
TBabelASTVisitor >> visitClass: aNode [
	self visitNode: aNode
]

{ #category : #'visiting-body' }
TBabelASTVisitor >> visitClassBody: aNode [
	self visitNode: aNode
]

{ #category : #'visiting-declaration' }
TBabelASTVisitor >> visitClassDeclaration: aNode [
	self visitDeclaration: aNode
]

{ #category : #'visiting-expression' }
TBabelASTVisitor >> visitClassExpression: aNode [
	self visitExpression: aNode
]

{ #category : #'visiting-method' }
TBabelASTVisitor >> visitClassMethod: aNode [
	self visitNode: aNode
]

{ #category : #'visiting-property' }
TBabelASTVisitor >> visitClassProperty: aNode [
	self visitNode: aNode
]

{ #category : #'visiting-expression' }
TBabelASTVisitor >> visitConditionalExpression: aNode [
	self visitExpression: aNode
]

{ #category : #'visiting-statement' }
TBabelASTVisitor >> visitContinueStatement: aNode [
	self visitStatement: aNode
]

{ #category : #'visiting-statement' }
TBabelASTVisitor >> visitDebuggerStatement: aNode [
	self visitStatement: aNode
]

{ #category : #'visiting-declaration' }
TBabelASTVisitor >> visitDeclaration: aNode [
	self visitStatement: aNode
]

{ #category : #'visiting-decorator' }
TBabelASTVisitor >> visitDecorator: aNode [
	self visitNode: aNode
]

{ #category : #'visiting-directive' }
TBabelASTVisitor >> visitDirective: aNode [
	self visitNode: aNode
]

{ #category : #'visiting-literal' }
TBabelASTVisitor >> visitDirectiveLiteral: aNode [
	self visitStringLiteral: aNode
]

{ #category : #'visiting-statement' }
TBabelASTVisitor >> visitDoWhileStatement: aNode [
	self visitStatement: aNode
]

{ #category : #'visiting-statement' }
TBabelASTVisitor >> visitEmptyStatement: aNode [
	self visitStatement: aNode
]

{ #category : #'visiting-declaration' }
TBabelASTVisitor >> visitExportAllDeclaration: aNode [
	self visitModuleDeclaration: aNode
]

{ #category : #'visiting-declaration' }
TBabelASTVisitor >> visitExportDefaultDeclaration: aNode [
	self visitModuleDeclaration: aNode
]

{ #category : #'visiting-declaration' }
TBabelASTVisitor >> visitExportNamedDeclaration: aNode [
	self visitModuleDeclaration: aNode
]

{ #category : #'visiting-specifier' }
TBabelASTVisitor >> visitExportSpecifier: aNode [
	self visitModuleSpecifier: aNode
]

{ #category : #'visiting-expression' }
TBabelASTVisitor >> visitExpression: aNode [
	self visitNode: aNode
]

{ #category : #'visiting-statement' }
TBabelASTVisitor >> visitExpressionStatement: aNode [
	self visit: aNode expression.
]

{ #category : #visiting }
TBabelASTVisitor >> visitExtra: aNode [
	
]

{ #category : #'visiting-file' }
TBabelASTVisitor >> visitFile: aNode [
	self visit: aNode program
]

{ #category : #'visiting-statement' }
TBabelASTVisitor >> visitForInStatement: aNode [
	self visitStatement: aNode
]

{ #category : #'visiting-statement' }
TBabelASTVisitor >> visitForOfStatement: aNode [
	self visitForInStatement: aNode
]

{ #category : #'visiting-statement' }
TBabelASTVisitor >> visitForStatement: aNode [
	self visitStatement: aNode
]

{ #category : #'visiting-function' }
TBabelASTVisitor >> visitFunction: aNode [
	self visitNode: aNode
]

{ #category : #'visiting-declaration' }
TBabelASTVisitor >> visitFunctionDeclaration: aNode [
	self visitDeclaration: aNode
]

{ #category : #'visiting-expression' }
TBabelASTVisitor >> visitFunctionExpression: aNode [
	self visitExpression: aNode
]

{ #category : #'visiting-identifier' }
TBabelASTVisitor >> visitIdentifier: aNode [
	
]

{ #category : #'visiting-statement' }
TBabelASTVisitor >> visitIfStatement: aNode [
	self visitStatement: aNode
]

{ #category : #'visiting-declaration' }
TBabelASTVisitor >> visitImportDeclaration: aNode [
	self visitModuleDeclaration: aNode
]

{ #category : #'visiting-specifier' }
TBabelASTVisitor >> visitImportDefaultSpecifier: aNode [
	self visitModuleSpecifier: aNode
]

{ #category : #'visiting-specifier' }
TBabelASTVisitor >> visitImportNamespaceSpecifier: aNode [
	self visitModuleSpecifier: aNode
]

{ #category : #'visiting-specifier' }
TBabelASTVisitor >> visitImportSpecifier: aNode [
	self visitModuleSpecifier: aNode
]

{ #category : #'visiting-statement' }
TBabelASTVisitor >> visitLabeledStatement: aNode [
	self visitStatement: aNode
]

{ #category : #'visiting-literal' }
TBabelASTVisitor >> visitLiteral: aNode [
	
]

{ #category : #'visiting-expression' }
TBabelASTVisitor >> visitLogicalExpression: aNode [
	self visitExpression: aNode
]

{ #category : #'visiting-expression' }
TBabelASTVisitor >> visitMemberExpression: aNode [
	self visitExpression: aNode
]

{ #category : #'visiting-property' }
TBabelASTVisitor >> visitMetaProperty: aNode [
	self visitExpression: aNode
]

{ #category : #'visiting-declaration' }
TBabelASTVisitor >> visitModuleDeclaration: aNode [
	self visitNode: aNode
]

{ #category : #'visiting-specifier' }
TBabelASTVisitor >> visitModuleSpecifier: aNode [
	self visitNode: aNode
]

{ #category : #'visiting-expression' }
TBabelASTVisitor >> visitNewExpression: aNode [
	self visitCallExpression: aNode
]

{ #category : #'visiting-node' }
TBabelASTVisitor >> visitNode: aNode [
	
]

{ #category : #'visiting-literal' }
TBabelASTVisitor >> visitNullLiteral: aNode [
	self visitLiteral: aNode
]

{ #category : #'visiting-literal' }
TBabelASTVisitor >> visitNumericLiteral: aNode [
	self visitLiteral: aNode
]

{ #category : #'visiting-expression' }
TBabelASTVisitor >> visitObjectExpression: aNode [
	self visitExpression: aNode
]

{ #category : #'visiting-member' }
TBabelASTVisitor >> visitObjectMember: aNode [
	self visitNode: aNode
]

{ #category : #'visiting-method' }
TBabelASTVisitor >> visitObjectMethod: aNode [
	self visitObjectMember: aNode
]

{ #category : #'visiting-pattern' }
TBabelASTVisitor >> visitObjectPattern: aNode [
	self visitPattern: aNode
]

{ #category : #'visiting-property' }
TBabelASTVisitor >> visitObjectProperty: aNode [
	self visitObjectMember: aNode
]

{ #category : #'visiting-pattern' }
TBabelASTVisitor >> visitPattern: aNode [
	self visitNode: aNode
]

{ #category : #'visiting-position' }
TBabelASTVisitor >> visitPosition: aNode [
	
]

{ #category : #'visiting-program' }
TBabelASTVisitor >> visitProgram: anObject [
	anObject body do: [ :each | self visit: each ]
]

{ #category : #'visiting-literal' }
TBabelASTVisitor >> visitRegExpLiteral: aNode [
	self visitLiteral: aNode
]

{ #category : #'visiting-element' }
TBabelASTVisitor >> visitRestElement: aNode [
	self visitPattern: aNode
]

{ #category : #'visiting-property' }
TBabelASTVisitor >> visitRestProperty: aNode [
	self visitNode: aNode
]

{ #category : #'visiting-statement' }
TBabelASTVisitor >> visitReturnStatement: aNode [
	self visitStatement: aNode
]

{ #category : #'visiting-expression' }
TBabelASTVisitor >> visitSequenceExpression: aNode [
	self visitExpression: aNode
]

{ #category : #'visiting-location' }
TBabelASTVisitor >> visitSourceLocation: aNode [
	
]

{ #category : #'visiting-element' }
TBabelASTVisitor >> visitSpreadElement: aNode [
	self visitNode: aNode
]

{ #category : #'visiting-property' }
TBabelASTVisitor >> visitSpreadProperty: aNode [
	self visitNode: aNode
]

{ #category : #'visiting-statement' }
TBabelASTVisitor >> visitStatement: aNode [
	self visitNode: aNode
]

{ #category : #'visiting-literal' }
TBabelASTVisitor >> visitStringLiteral: aNode [
	self visitLiteral: aNode
]

{ #category : #'visiting-super' }
TBabelASTVisitor >> visitSuper: aNode [
	self visitNode: aNode
]

{ #category : #'visiting-case' }
TBabelASTVisitor >> visitSwitchCase: aNode [
	self visitNode: aNode
]

{ #category : #'visiting-statement' }
TBabelASTVisitor >> visitSwitchStatement: aNode [
	self visitStatement: aNode
]

{ #category : #'visiting-expression' }
TBabelASTVisitor >> visitTaggedTemplateExpression: aNode [
	self visitExpression: aNode
]

{ #category : #'visiting-element' }
TBabelASTVisitor >> visitTemplateElement: aNode [
	self visitNode: aNode
]

{ #category : #'visiting-literal' }
TBabelASTVisitor >> visitTemplateLiteral: aNode [
	self visitExpression: aNode
]

{ #category : #'visiting-expression' }
TBabelASTVisitor >> visitThisExpression: aNode [
	self visitExpression: aNode
]

{ #category : #'visiting-statement' }
TBabelASTVisitor >> visitThrowStatement: aNode [
	self visitStatement: aNode
]

{ #category : #'visiting-statement' }
TBabelASTVisitor >> visitTryStatement: aNode [
	self visitStatement: aNode
]

{ #category : #'visiting-expression' }
TBabelASTVisitor >> visitUnaryExpression: aNode [
	self visitExpression: aNode
]

{ #category : #'visiting-expression' }
TBabelASTVisitor >> visitUpdateExpression: aNode [
	self visitExpression: aNode
]

{ #category : #'visiting-declaration' }
TBabelASTVisitor >> visitVariableDeclaration: aNode [
	self visitDeclaration: aNode
]

{ #category : #'visiting-declarator' }
TBabelASTVisitor >> visitVariableDeclarator: aNode [
	self visitNode: aNode
]

{ #category : #'visiting-statement' }
TBabelASTVisitor >> visitWhileStatement: aNode [
	self visitStatement: aNode
]

{ #category : #'visiting-statement' }
TBabelASTVisitor >> visitWithStatement: aNode [
	self visitStatement: aNode
]

{ #category : #'visiting-expression' }
TBabelASTVisitor >> visitYieldExpression: aNode [
	self visitExpression: aNode
]
