tests
testReadDuration
	"self debug: #testReadDuration"
	
	| duration inst |
	duration := self durationAnswerBytes.
	inst := Object fromStomp: duration.
	
	self should: [inst class = Duration].
	self should: [inst = 123 seconds].
	