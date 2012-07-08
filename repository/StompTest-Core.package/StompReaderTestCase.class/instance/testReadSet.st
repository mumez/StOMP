tests
testReadSet
	"self debug: #testReadSet"
	| set |
	set := Set new.
	set add: 10.
	set add: 20.
	set add: 30.
	set add: 30.
	
	self should: [(Object fromStomp:(self setAnswerBytes)) = set]
	