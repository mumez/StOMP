tests
testReadBasicFixedClass
	"self debug: #testReadBasicFixedClass"
	| bytes obj expected |
	bytes := self basicFixedClassAnswerBytes.
	obj := (StompReader onBytes: bytes) next.
	
	expected := StompMockFixedClass new.
	expected instVar1: 1.
	expected instVar2: #two.
	expected instVar3: (StompPortableUtil default testFixturesClass double3dot3).
	expected instVar4: false.
	expected instVar5: 'FIVE'.
	
	self should: [obj equals: expected].
	
	
	
	