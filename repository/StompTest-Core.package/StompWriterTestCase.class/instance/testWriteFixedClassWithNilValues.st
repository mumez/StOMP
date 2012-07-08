tests
testWriteFixedClassWithNilValues
	"self debug: #testWriteFixedClassWithNilValues"
	| data wstr bytes |
	data := StompMockFixedClass new.
	data instVar1: 1.
	data instVar2: nil.
	data instVar3: (StompPortableUtil default testFixturesClass double3dot3).
	data instVar4: nil.
	data instVar5: 'FIVE'.

	wstr := StompWriter onBytes: ByteArray new.
	wstr settings suppressNilWrite: true.
	wstr nextPut: data.
	bytes := wstr contents.
	
	self should: [bytes = self fixedClassWithNilValuesAnswerBytes]
	
	
	
	