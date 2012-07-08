tests
testReadRectangle
	"self debug: #testReadRectangle"
	| rect |
	rect := (1@1 corner: 3@4).
	
	self should: [(Object fromStomp:(self rectangleAnswerBytes)) = rect]
	
	