https://github.com/babel/babel/blob/master/doc/ast/spec.md#catchclause

interface CatchClause <: Node {
  type: "CatchClause";
  param: Pattern;
  body: BlockStatement;
}