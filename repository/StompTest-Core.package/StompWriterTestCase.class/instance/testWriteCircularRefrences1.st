tests
testWriteCircularRefrences1
	"self debug: #testWriteCircularRefrences1"
	| inst1 inst2 data wstr bytes |
	inst1 := StompMockVariableClass new: 3.
	inst1 at: 1 put: 1.
	inst1 at: 2 put: 'two'.
	inst1 at: 3 put: inst1.
	
	inst2 := StompMockMixedClass new: 3.
	inst2 at: 1 put: 1.
	inst2 at: 2 put: 'two'.
	inst2 at: 3 put: (StompPortableUtil default testFixturesClass double3dot3).
	inst2 instVar1: inst1.
	inst2 instVar2: inst2.
	
	data := Array with: inst1 with: inst2 with: inst1 with: inst2.
	
	wstr := StompWriter onBytes: ByteArray new.
	wstr nextPut: data.
	bytes := wstr contents.

	self should: [bytes = self circularRefrencesAnswerBytes]
	
	
	
	