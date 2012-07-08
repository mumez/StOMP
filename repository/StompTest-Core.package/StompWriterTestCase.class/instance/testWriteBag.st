tests
testWriteBag
	"self debug: #testWriteBag"
	| bag actual expected |
	bag := Bag new.
	bag add: 10.
	bag add: 20.
	bag add: 30.
	bag add: 30.
	expected := self bagAnswerBytes.	
	actual := bag toStomp.
	
	self should: [actual size = 9].
	self should: [(actual copyFrom: 1 to: 5) = (expected copyFrom: 1 to: 5)].
	self should: [(actual copyFrom: 6 to: 9) asSortedCollection = (expected copyFrom: 6 to: 9) asSortedCollection]