tests
testWriteBasicFixedClass
	"self debug: #testWriteBasicFixedClass"
	| data wstr bytes |
	data := StompMockFixedClass new.
	data instVar1: 1.
	data instVar2: #two.
	data instVar3: 3.3.
	data instVar4: false.
	data instVar5: 'FIVE'.

	wstr := StompWriter onBytes: ByteArray new.
	wstr nextPut: data.
	bytes := wstr contents.
	
	self should: [bytes = self basicFixedClassAnswerBytes]
	
	
	
	