tests
testReadMixedClassNoVariableData
	"self debug: #testReadMixedClassNoVariableData"
	| data |
	data := StompMockMixedClass new.
	data instVar1: #(true false).
	data instVar2: #(nil #()).

	self should: [data equals: (Object fromStomp:(self mixedClassNoVariableDataAnswerBytes))]
	