tests
testReadBasicMixedClass
	"self debug: #testReadBasicMixedClass"
	| bytes obj expected |
	bytes := self basicMixedClassAnswerBytes.
	obj := (StompReader onBytes: bytes) next.
	
	expected := StompMockMixedClass new: 3.
	expected at: 1 put: 1.
	expected at: 2 put: 'two'.
	expected at: 3 put: (StompPortableUtil default testFixturesClass double3dot3).
	expected instVar1: #(true false).
	expected instVar2: #(nil #()).
	
	self should: [obj equals: expected]
	
	
	
	