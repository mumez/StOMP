tests
testWriteDuration
	"self debug: #testWriteDuration"
	| duration bytes |
	duration := 123 seconds.
	bytes := duration toStomp.
	self should: [bytes = self durationAnswerBytes]
	
	
	
	