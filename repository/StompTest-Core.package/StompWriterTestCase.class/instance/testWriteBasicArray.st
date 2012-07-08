tests
testWriteBasicArray
	"self debug: #testWriteBasicArray"
	| data wstr bytes |
	data := #(1 2 3 #('Hello' 2 3)).
	wstr := StompWriter onBytes: ByteArray new.
	wstr nextPut: data.
	bytes := wstr contents.
	
	self should: [bytes = self basicArrayAnswerBytes]
	
	
	
	