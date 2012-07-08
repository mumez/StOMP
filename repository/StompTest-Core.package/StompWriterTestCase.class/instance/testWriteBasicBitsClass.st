tests
testWriteBasicBitsClass
	"self debug: #testWriteBasicBitsClass"
	| data wstr bytes |
	data := StompMockByteArray new: 3.
	data at: 1 put: 0.
	data at: 2 put: 127.
	data at: 3 put: 255.

	wstr := StompWriter onBytes: ByteArray new.
	wstr nextPut: data.
	bytes := wstr contents.
	
	self should: [bytes = self basicBitsClassAnswerBytes]
	
	
	
	