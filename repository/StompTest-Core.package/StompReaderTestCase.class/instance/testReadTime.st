tests
testReadTime
	"self debug: #testReadTime"
	
	| bytes inst |
	bytes := self timeAnswerBytes.
	inst := Object fromStomp: bytes.
	
	self should: [inst class = Time].
	self should: [inst = (Time fromSeconds: 84072)].
	