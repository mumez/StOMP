tests
testWriteRectangle
	"self debug: #testWriteRectangle"
	| rect bytes |
	rect := (1@1 corner: 3@4).
	
	bytes := rect toStomp.
	self should: [bytes = self rectangleAnswerBytes]
	