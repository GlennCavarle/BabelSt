accessing
es6CompilerScriptSource
^ 'var babel = require("babel-core");
var arguments = process.argv.slice(2);
var jsSrc = arguments[0];
var ast = babel.transform(jsSrc).ast;
console.log(JSON.stringify(ast));'