tests
testWriteBasicMixedClass
	"self debug: #testWriteBasicMixedClass"
	| data wstr bytes |
	data := StompMockMixedClass new: 3.
	data at: 1 put: 1.
	data at: 2 put: 'two'.
	data at: 3 put: (StompPortableUtil default testFixturesClass double3dot3).
	data instVar1: #(true false).
	data instVar2: #(nil #()).

	wstr := StompWriter onBytes: ByteArray new.
	wstr nextPut: data.
	bytes := wstr contents.
	
	self should: [bytes = self basicMixedClassAnswerBytes]
	
	
	
	