tests
testReadBasicBitsClass
	"self debug: #testReadBasicBitsClass"
	| bytes obj expected |
	bytes := self basicBitsClassAnswerBytes.
	obj := (StompReader onBytes: bytes) next.
	
	expected := StompMockByteArray new: 3.
	expected at: 1 put: 0.
	expected at: 2 put: 127.
	expected at: 3 put: 255.

	self should: [obj = expected].
	
	
	