tests
testReadSharedRefrences1
	"self debug: #testReadSharedRefrences1"
	| bytes reader obj inst1 inst2 expected  |
	bytes := self sharedReferenceAnswerBytes.
	reader := StompReader onBytes: bytes.
	obj := reader next.
	
	inst1 := StompMockVariableClass new: 3.
	inst1 at: 1 put: 1.
	inst1 at: 2 put: 'two'.
	inst1 at: 3 put: (StompPortableUtil default testFixturesClass double3dot3).
	
	inst2 := StompMockMixedClass new: 3.
	inst2 at: 1 put: 1.
	inst2 at: 2 put: 'two'.
	inst2 at: 3 put: (StompPortableUtil default testFixturesClass double3dot3).
	inst2 instVar1: #(true false).
	inst2 instVar2: #(nil #()).
	
	expected := Array with: inst1 with: inst2 with: inst1 with: inst2.
	
	self should: [obj = expected].
	
	
	