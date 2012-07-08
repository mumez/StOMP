tests
testWriteFraction
	"self debug: #testWriteFraction"
	| fra bytes |
	fra := 3 / 4.
	
	bytes := fra toStomp.
	self should: [bytes = self fractionAnswerBytes]
	