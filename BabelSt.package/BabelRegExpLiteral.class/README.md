https://github.com/babel/babel/blob/master/doc/ast/spec.md#regexpliteral

interface RegExpLiteral <: Literal {
  type: "RegExpLiteral";
  pattern: string;
  flags: string;
}