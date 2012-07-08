tests
testWriteNumber
	"self debug: #testWriteNumber"
	self should: [1 toStomp = #[1]].
	self should: [1.2 toStomp = self floatingPointAnswerBytes1].
	self should: [StompPortableUtil default testFixturesClass double1234567890dot123456789 toStomp = self floatingPointAnswerBytes2]