tests
testWriteTime
	"self debug: #testWriteTime"
	| inst bytes |
	inst := Time fromSeconds: 84072.
	bytes := inst toStomp.
	self should: [bytes = self timeAnswerBytes]
	
	
	
	