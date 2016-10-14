https://github.com/babel/babel/blob/master/doc/ast/spec.md#classbody

interface ClassBody <: Node {
  type: "ClassBody";
  body: [ ClassMethod | ClassProperty ];
}