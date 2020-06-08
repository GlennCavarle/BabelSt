const { program } = require('commander');
const compiler = require('./compiler')


program
      .command("export <file> <ast>")
      .description('compile <ast> and write resulting code in <file>')
      .action((file,ast) => compiler.generateFileFromAst(file, JSON.parse(ast)));

program
      .command("ast2code <ast>")
      .description('compile <ast> and return resulting code')
      .action((ast) => console.log(compiler.astToCode(JSON.parse(ast))));

program
      .command("code2ast <code>")
      .description('compile <code> and return resulting ast')
      .action((code) => console.log(JSON.stringify(compiler.codeToAst(code))));


program.parse(process.argv)