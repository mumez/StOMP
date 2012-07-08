tests
testWriteBasicVariableClass
	"self debug: #testWriteBasicVariableClass"
	| data wstr bytes |
	data := StompMockVariableClass new: 3.
	data at: 1 put: 1.
	data at: 2 put: 'two'.
	data at: 3 put: (StompPortableUtil default testFixturesClass double3dot3).
	
	wstr := StompWriter onBytes: ByteArray new.
	wstr nextPut: data.
	bytes := wstr contents.
	
	self should: [bytes = self basicVariableClassAnswerBytes]
	
	
	
	