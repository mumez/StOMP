tests
testReadClassNameAndIds
	"self debug: #testReadClassNameAndIds"
	
	| bytes obj data1 data2 data3 data4 expected |
	bytes := self classNameAndIdsAnswerBytes.
	obj := (StompReader onBytes: bytes) next.
	
	data1 := StompMockFixedClass new.
	data1 instVar1: 1.
	data1 instVar2: #one.
	
	data2 := StompMockFixedClass new.
	data2 instVar1: 2.
	data2 instVar2: #two.
	
	data3 := StompMockMixedClass new.
	data3 instVar1: 3.
	data3 instVar2: #three.
	
	data4 := StompMockMixedClass new.
	data4 instVar1: 4.
	data4 instVar2: #four.
	
	expected := Array with: data1 with: data2 with: data3 with: data4.
	
	self should: [(obj at: 1) equals: (expected at: 1)].
	self should: [(obj at: 2) equals: (expected at: 2)].
	self should: [(obj at: 3) equals: (expected at: 3)].
	self should: [(obj at: 4) equals: (expected at: 4)]
	
	
	
	