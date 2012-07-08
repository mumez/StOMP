tests
testWriteClass
	"self debug: #testWriteClass"
	| cls bytes |
	cls := StompMockObjectWithCache.
	cls att1: 11.
	cls att2: 22.
	bytes := cls toStomp.
	self should: [bytes = self classAnswerBytes]
	
	
	
	