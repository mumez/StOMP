testing
testStompTransientInstVarNames
	"self debug: #testStompTransientInstVarNames"
	| obj readObject|
	obj := StompMockObjectWithCache new.
	obj instVar1: '1'.
	obj instVar2: '2'.
	obj instVar3: 3.	
	obj instVar4: 4.
	obj instVar5: 5.

	readObject := StompReader decode: (StompWriter encode: obj).
	self should: [readObject instVar1 = nil].	
	self should: [readObject instVar2 = nil].	
	self should: [readObject instVar3 = nil].	
	self should: [readObject instVar4 = 4].
	self should: [readObject instVar5 = 5].
	
	self should: [obj instVar1 = '1'].	
	self should: [obj instVar2 = '2'].	
	self should: [obj instVar3 = 3].	
	self should: [obj instVar4 = 4].
	self should: [obj instVar5 = 5].