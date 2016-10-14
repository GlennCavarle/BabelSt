https://github.com/babel/babel/blob/master/doc/ast/spec.md#classmethod

interface ClassMethod <: Node {
  type: "ClassMethod";
  key: Expression;
  value: FunctionExpression;
  kind: "constructor" | "method" | "get" | "set";
  computed: boolean;
  static: boolean;
  decorators: [ Decorator ];
}