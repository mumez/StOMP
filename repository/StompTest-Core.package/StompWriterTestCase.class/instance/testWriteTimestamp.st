tests
testWriteTimestamp
	"self debug: #testWriteTimestamp"
	| bytes timestamp |
	timestamp := StompPortableUtil default testFixturesClass timestamp1.
	bytes := timestamp toStomp.
	self should: [bytes = self timestampAnswerBytes]
	