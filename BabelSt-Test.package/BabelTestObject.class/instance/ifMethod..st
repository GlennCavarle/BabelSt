accessing
ifMethod: aTest
	((self other + 4) = 10) ifTrue: [ ^ self test ] ifFalse:[^ self other]