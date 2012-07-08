tests
testReadRunArray
	"self debug: #testReadRunArray"
	| arr |
	arr := RunArray runs: #(1 2 1) values: #(1 2 3).
	self should: [(Object fromStomp:(self runArrayAnswerBytes)) = arr]
	