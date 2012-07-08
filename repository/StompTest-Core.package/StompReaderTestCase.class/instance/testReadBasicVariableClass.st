tests
testReadBasicVariableClass
	"self debug: #testReadBasicVariableClass"
	| bytes obj expected |
	bytes := self basicVariableClassAnswerBytes.
	obj := (StompReader onBytes: bytes) next.
	
	expected := StompMockVariableClass new: 3.
	expected at: 1 put: 1.
	expected at: 2 put: 'two'.
	expected at: 3 put: (StompPortableUtil default testFixturesClass double3dot3).
	
	self should: [obj = expected]
	
	
	
	