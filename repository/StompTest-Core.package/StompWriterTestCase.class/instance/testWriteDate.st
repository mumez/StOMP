tests
testWriteDate
	"self debug: #testWriteDate"
	| date bytes |
	date := Date fromDays: 37023.
	bytes := date toStomp.
	self should: [bytes = self dateAnswerBytes]
	
	
	
	