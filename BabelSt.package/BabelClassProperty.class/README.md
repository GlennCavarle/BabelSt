https://github.com/babel/babel/blob/master/doc/ast/spec.md#classproperty

interface ClassProperty <: Node {
  type: "ClassProperty";
  key: Identifier;
  value: Expression;
}