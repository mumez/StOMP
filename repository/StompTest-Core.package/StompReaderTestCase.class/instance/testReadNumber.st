tests
testReadNumber
	"self debug: #testReadNumber"
	self should: [(Object fromStomp:(#[1])) = 1].
	self should: [(Object fromStomp:(self floatingPointAnswerBytes1)) = 1.2].
	self should: [(Object fromStomp:(self floatingPointAnswerBytes2))  = StompPortableUtil default testFixturesClass double1234567890dot123456789]