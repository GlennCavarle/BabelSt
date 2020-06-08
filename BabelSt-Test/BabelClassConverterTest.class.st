Class {
	#name : #BabelClassConverterTest,
	#superclass : #BabelAbstractTest,
	#category : 'BabelSt-Test-Converter'
}

{ #category : #'as yet unclassified' }
BabelClassConverterTest class >> testObjectResult [
	^ 'class BabelTestObject {
  test;

  setTest(anObject) {
    this.test = anObject;
  }

  otherMethod() {
    return this.test;
  }

  ifMethod_(aTest) {
    if (this.other() + 4 == 10) {} else {}
  }

  otherMethod_(aTest) {
    this.setTest(aTest);
  }

  barMethod_(aTest) {
    Object.test_(aTest);
  }

  fooMethod_(aTest) {
    this.other().setTest(aTest);
  }

  getTest() {
    return this.test;
  }

}'
]

{ #category : #'as yet unclassified' }
BabelClassConverterTest >> assertStClass: aClass compiledTo: jsSources [
	| file jsOut |
	file := BabelPharoClassConverter exportPharoClass: aClass context: nil.
	jsOut := (BabelCompiler compileToES6: file).
	self assert: jsOut trimBoth withSqueakLineEndings equals: jsSources withSqueakLineEndings
]

{ #category : #'as yet unclassified' }
BabelClassConverterTest >> testClassConvert [
	self assertStClass: BabelTestObject  compiledTo: self class testObjectResult
]
