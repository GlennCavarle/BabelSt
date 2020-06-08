Class {
	#name : #BabelFile,
	#superclass : #BabelNode,
	#instVars : [
		'filename',
		'program'
	],
	#category : 'BabelSt-AST'
}

{ #category : #visiting }
BabelFile >> accept: aVisitor [
	aVisitor visitFile: self
]

{ #category : #accessing }
BabelFile >> filename [
	^ filename
]

{ #category : #accessing }
BabelFile >> filename: anObject [
	filename := anObject
]

{ #category : #'initialize-release' }
BabelFile >> initialize [
	super initialize.
	program := BabelProgram new
]

{ #category : #accessing }
BabelFile >> program [
	^ program
]

{ #category : #accessing }
BabelFile >> program: anObject [
	program := anObject
]
