testing
testNewFailedRead
	"self debug: #testNewFailedRead"
	| bytes arr obj1 obj2 obj3 |
	bytes := self renamedNewFailedAnswerArray1.
	arr := Object fromStomp: bytes setting: [:ctx |
		ctx registerClassOldName: #StompMockFixedNewFailedClass for: StompMockFixedAlternativeClass.
	].
	self should: [arr class = Array].
	self should: [arr size = 3].
	obj1 := arr at: 1.
	self should: [obj1 class = StompMockFixedAlternativeClass].
	self should: [obj1 att1 = 1].
	self should: [obj1 att2 = 2].
	self should: [obj1 att3Block notNil].
	obj2 := arr at: 2.
	self should: [obj2 class = StompMockFixedAlternativeClass].
	self should: [obj2 att1 = 3].
	self should: [obj2 att2 = 4].
	self should: [obj2 att3Block notNil].
	obj3 := arr at: 3.
	self should: [obj3 = obj1].