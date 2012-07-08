tests
testWriteRecursiveArray
	"self debug: #testWriteRecursiveArray"
	| arr bytes |
	arr := Array new: 3.
	arr at: 1 put: 10.
	arr at: 2 put: 20.
	arr at: 3 put: arr.
	bytes := arr toStomp.
	self should: [bytes = self recursiveArrayAnswerBytes]
	
	
	
	