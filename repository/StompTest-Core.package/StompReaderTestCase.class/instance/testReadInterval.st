tests
testReadInterval
	"self debug: #testReadInterval"
	| interval |
	interval := 1 to: 10 by: 3.
	
	self should: [(Object fromStomp: (self intervalAnswerBytes)) = interval]
	