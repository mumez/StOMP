tests
testReadDate
	"self debug: #testReadDate"
	
	| bytes inst |
	bytes := self dateAnswerBytes.
	inst := Object fromStomp: bytes.
	
	self should: [inst class = Date].
	self should: [inst = (Date fromDays: 37023)].
	