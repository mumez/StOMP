tests
testReadUndefinedObject
	"self debug: #testReadUndefinedObject"
	self should: [(Object fromStomp:(#[192])) = nil].
	
	