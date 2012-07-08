tests
testReadBag
	"self debug: #testReadBag"
	
	| bytes inst |
	bytes := self bagAnswerBytes.
	inst := Object fromStomp: bytes.
	
	self should: [inst class = Bag].
	self
		should: [inst size = 4].
	self
		should: [inst includes: 10].
	self
		should: [inst includes: 20].
	self
		should: [inst includes: 30].
	self
		should: [(inst occurrencesOf: 30) = 2]