https://github.com/babel/babel/blob/master/doc/ast/spec.md#node-objects

interface Identifier <: Expression, Pattern {
  type: "Identifier";
  name: string;
}