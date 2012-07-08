testing
testStompTransientClassInstVarNames
	"self debug: #testStompTransientClassInstVarNames"
	| obj encodedBytes readObject|
	obj := StompMockObjectWithCache.
	obj att1: 1.
	obj att2: 2.
	obj cache1: 'cache1'.
	encodedBytes := StompWriter encode: obj.
	
	obj att1: nil.
	obj att2: nil.
	obj cache1: nil.

	readObject := StompReader decode: encodedBytes.
	self should: [readObject att1 = 1].	
	self should: [readObject att2 = 2].	
	self should: [readObject cache1 = nil].	
	
	
	