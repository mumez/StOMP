tests
testReadCircularRefrences1
	"self debug: #testReadCircularRefrences1"
	| bytes reader obj inst1 inst2 expected |
	bytes := self circularRefrencesAnswerBytes.
	reader := StompReader onBytes: bytes.
	obj := reader next.
	
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
	
	expected := Array with: inst1 with: inst2 with: inst1 with: inst2.
	
	self should: [obj class = expected class].
	self should: [obj size = expected size]. 
	
	self should: [(obj at: 1) class = StompMockVariableClass].
	self should: [(obj at: 1) class = (expected at: 1) class].
	self should: [((obj at: 1) at: 1) = 1].
	self should: [((obj at: 1) at: 1) = ((expected at: 1) at: 1)].
	self should: [((obj at: 1) at: 2) = 'two'].
	self should: [((obj at: 1) at: 2) = ((expected at: 1) at: 2)].
	self should: [((obj at: 1) at: 3) class = StompMockVariableClass].
	self should: [((obj at: 1) at: 3) class = ((expected at: 1) at: 3) class].
	self should: [(obj at: 1) identityHash = ((obj at: 1) at: 3) identityHash].
	
	self should: [(obj at: 2) class = StompMockMixedClass].
	self should: [(obj at: 2) class = (expected at: 2) class].
	self should: [((obj at: 2) at: 1) = 1].
	self should: [((obj at: 2) at: 1) = ((expected at: 2) at: 1)].
	self should: [((obj at: 2) at: 2) = 'two'].
	self should: [((obj at: 2) at: 2) = ((expected at: 2) at: 2)].
	self should: [((obj at: 2) at: 3) = (StompPortableUtil default testFixturesClass double3dot3)].
	self should: [((obj at: 2) at: 3) = ((expected at: 2) at: 3)].
	self should: [((obj at: 2) instVar1) class = StompMockVariableClass].
	self should: [((obj at: 2) instVar1) class = ((expected at: 2) instVar1) class].
	self should: [(obj at: 2) instVar1 identityHash = (obj at: 1) identityHash].
	self should: [((obj at: 2) instVar2) class = StompMockMixedClass].
	self should: [((obj at: 2) instVar2) class = ((expected at: 2) instVar2) class].
	self should: [(obj at: 2) instVar2 identityHash = (obj at: 2) identityHash].
	
	self should: [(obj at: 3) class = StompMockVariableClass].
	self should: [(obj at: 3) class = (expected at: 3) class].
	self should: [((obj at: 3) at: 1) = 1].
	self should: [((obj at: 3) at: 1) = ((expected at: 3) at: 1)].
	self should: [((obj at: 3) at: 2) = 'two'].
	self should: [((obj at: 3) at: 2) = ((expected at: 3) at: 2)].
	self should: [((obj at: 3) at: 3) class = StompMockVariableClass].
	self should: [((obj at: 3) at: 3) class = ((expected at: 3) at: 3) class].
	self should: [(obj at: 3) identityHash = ((obj at: 3) at: 3) identityHash].
	
	self should: [(obj at: 4) class = StompMockMixedClass].
	self should: [(obj at: 4) class = (expected at: 4) class].
	self should: [((obj at: 4) at: 1) = 1].
	self should: [((obj at: 4) at: 1) = ((expected at: 4) at: 1)].
	self should: [((obj at: 4) at: 2) = 'two'].
	self should: [((obj at: 4) at: 2) = ((expected at: 4) at: 2)].
	self should: [((obj at: 4) at: 3) = (StompPortableUtil default testFixturesClass double3dot3)].
	self should: [((obj at: 4) at: 3) = ((expected at: 4) at: 3)].
	self should: [((obj at: 4) instVar1) class = StompMockVariableClass].
	self should: [((obj at: 4) instVar1) class = ((expected at: 4) instVar1) class].
	self should: [(obj at: 4) instVar1 identityHash = (obj at: 1) identityHash].
	self should: [((obj at: 4) instVar2) class = StompMockMixedClass].
	self should: [((obj at: 4) instVar2) class = ((expected at: 4) instVar2) class].
	self should: [(obj at: 4) instVar2 identityHash = (obj at: 2) identityHash].
	
	
	
	