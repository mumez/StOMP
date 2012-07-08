tests
testWriteUndefinedObject
	"self debug: #testWriteUndefinedObject"
	self should: [nil toStomp = #[192]].
	
	