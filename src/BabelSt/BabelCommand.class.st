Class {
	#name : #BabelCommand,
	#superclass : #Object,
	#category : 'BabelSt-Tool'
}

{ #category : #accessing }
BabelCommand class >> astCompilerFilename [
^ 'babel-compiler.js'
]

{ #category : #accessing }
BabelCommand class >> astCompilerScriptSource [
^ 'var babel = require("babel-core");
var arguments = process.argv.slice(2);
var jsonAst = arguments[0];
var sourceCode = babel.transformFromAst(JSON.parse(jsonAst)).code;
console.log(sourceCode);'
]

{ #category : #accessing }
BabelCommand class >> es6CompilerFilename [
^ 'babel-es6-compiler.js'
]

{ #category : #accessing }
BabelCommand class >> es6CompilerScriptSource [
^ 'var babel = require("babel-core");
var arguments = process.argv.slice(2);
var jsSrc = arguments[0];
var ast = babel.transform(jsSrc).ast;
console.log(JSON.stringify(ast));'
]

{ #category : #'as yet unclassified' }
BabelCommand class >> exec: aString [
	^ self exec: aString cwd: FileSystem workingDirectory pathString
]

{ #category : #'as yet unclassified' }
BabelCommand class >> exec: aString cwd: aWd [
	^ (OSSUnixSubprocess new
		shellCommand: aString;
		workingDirectory: aWd;
		redirectStdout;
		redirectStderr
		) runAndWait stdoutStream upToEnd
]

{ #category : #accessing }
BabelCommand class >> exporterFilename [
^ 'babel-export.js'
]

{ #category : #accessing }
BabelCommand class >> exporterScriptSource [
^ 'var babel = require("babel-core");
var fs = require("fs");
var arguments = process.argv.slice(2);
var fileName = arguments[0];
var jsonAst = arguments[1];
var sourceCode = babel.transformFromAst(JSON.parse(jsonAst)).code;
fs.writeFile("src/"+fileName, sourceCode, function(err) {
    if(err) {
        return console.log(err);
    }
}); 
console.log(sourceCode);'
]

{ #category : #accessing }
BabelCommand class >> nodeDirectory [
	^ (FileSystem workingDirectory / 'node') pathString
]
