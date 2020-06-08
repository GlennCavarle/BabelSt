as yet unclassified
testObjectResult
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