tests
testReadTimestamp
	"self debug: #testReadTimestamp"
	
	| timestamp |
	timestamp := StompPortableUtil default testFixturesClass timestamp1.
	self should: [(Object fromStomp: (self timestampAnswerBytes)) = timestamp]
	