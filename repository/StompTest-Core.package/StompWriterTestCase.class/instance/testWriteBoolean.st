tests
testWriteBoolean
	"self debug: #testWriteBoolean"
	self should: [true toStomp =  #[195]].
	self should: [false toStomp =  #[194]]
	
	
	
	