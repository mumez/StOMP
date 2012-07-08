tests
testReadBoolean
	"self debug: #testReadBoolean"
	
	self should: [(Object fromStomp: (#[195])) = true].
	self should: [(Object fromStomp: (#[194])) = false].