tests
testReadClass
	"self debug: #testReadClass"
	| cls |
	cls := StompMockObjectWithCache.
	cls att1: 11.
	cls att2: 22.
	self should: [(Object fromStomp: (self classAnswerBytes)) = cls]
	
	