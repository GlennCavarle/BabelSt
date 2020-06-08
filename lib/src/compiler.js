

module.exports = {


    astToCode: function (jsonAst) {
        return require('@babel/generator').default(JSON.parse(jsonAst)).code;
    },

    codeToAst: function (code) {
        return require('@babel/parser').parse(code, {
            plugins: [["decorators", { decoratorsBeforeExport: true }]]
        });
    },

    generateFileFromAst: function (fileName, jsonAst) {
        require("fs").writeFile(fileName, astToCode(jsonAst), function (err) {
            if (err) { return console.err(err) }
        });
    }

}