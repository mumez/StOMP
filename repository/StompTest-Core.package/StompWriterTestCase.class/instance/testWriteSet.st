tests
testWriteSet
	"self debug: #testWriteSet"
	| set expected actual |
	set := Set new.
	set add: 10.
	set add: 20.
	set add: 30.
	set add: 30.
	expected := self setAnswerBytes.	
	actual := set toStomp.
	
	self should: [actual size = 8].
	self should: [(actual copyFrom: 1 to: 5) = (expected copyFrom: 1 to: 5)].
	self should: [(actual copyFrom: 6 to: 8) asSortedCollection = (expected copyFrom: 6 to: 8) asSortedCollection]
	
	