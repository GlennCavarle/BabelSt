accessing
exporterScriptSource
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