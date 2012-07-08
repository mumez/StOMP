tests
testWriteMixedClassNoVariableData
	"self debug: #testWriteMixedClassNoVariableData"
	| data wstr bytes |
	data := StompMockMixedClass new.
	data instVar1: #(true false).
	data instVar2: #(nil #()).

	wstr := StompWriter onBytes: ByteArray new.
	wstr nextPut: data.
	bytes := wstr contents.
	
	self should: [bytes = self mixedClassNoVariableDataAnswerBytes]
	
	
	
	