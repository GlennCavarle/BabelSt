as yet unclassified
testObjectResult
	^ 'class BabelTestObject {
  test;

  otherMethod_(aTest) {
    this.setTest(aTest);
  }

  setTest(anObject) {
    this.test = anObject;
  }

  ifMethod_(aTest) {
    if (this.other() + 4 == 10) {} else {}
  }

  barMethod_(aTest) {
    Object.test_(aTest);
  }

  fooMethod_(aTest) {
    this.other().setTest(aTest);
  }

  otherMethod() {
    return this.test;
  }

  getTest() {
    return this.test;
  }

}'