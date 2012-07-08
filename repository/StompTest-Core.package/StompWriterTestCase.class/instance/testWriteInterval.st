tests
testWriteInterval
	"self debug: #testWriteInterval"
	| interval bytes |
	interval := 1 to: 10 by: 3.
	
	bytes := interval toStomp.
	self should: [bytes = self intervalAnswerBytes]
	