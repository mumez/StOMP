tests
testReadFraction
	"self debug: #testReadFraction"
	| fra |
	fra := 3 / 4.
	
	self should: [(Object fromStomp: (self fractionAnswerBytes)) = fra]