accessing
astCompilerScriptSource
^ 'var babel = require("babel-core");
var arguments = process.argv.slice(2);
var jsonAst = arguments[0];
var sourceCode = babel.transformFromAst(JSON.parse(jsonAst)).code;
console.log(sourceCode);'