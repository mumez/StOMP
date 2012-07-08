tests
testWriteRunArray
	"self debug: #testWriteRunArray"
	| arr bytes |
	arr := RunArray runs: #(1 2 1) values: #(1 2 3).
	bytes := arr toStomp.
	self should: [bytes = self runArrayAnswerBytes]
	
	
	
	