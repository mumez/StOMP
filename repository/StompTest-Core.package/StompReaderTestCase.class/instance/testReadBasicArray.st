tests
testReadBasicArray
	"self debug: #testReadBasicArray"
	| bytes obj |
	bytes := self basicArrayAnswerBytes.
	obj := (StompReader onBytes: bytes) next.
	
	self should: [obj class = Array].
	self should: [obj = #(1 2 3 #('Hello' 2 3))]