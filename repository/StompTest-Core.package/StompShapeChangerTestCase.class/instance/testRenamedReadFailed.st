testing
testRenamedReadFailed
	"self debug: #testRenamedReadFailed"
	| bytes inst |
	bytes := self renamedReadFailedAnswerArray1.

	"By default, unresolved class's instance will be nil"
	inst := Object fromStomp: bytes.
	self should: [inst class = StompMockFixedClass].
	self should: [inst instVar1 = 'test1'].
	self should: [inst instVar2 isNil].
	self should: [inst instVar3 = 'test3'].
	self should: [inst instVar4 class = StompMockMixedClass].
	self should: [(inst instVar4 at: 1) = 'test4'].
	self should: [(inst instVar4 at: 2) isNil].
	self should: [inst instVar5 isNil].
	
	"Override the behavior by context"
	inst := Object fromStomp: bytes setting: [:ctx |
		ctx registerClassOldName: #StompMockFixedClass2OLD for: StompMockFixedClass2.
	].
	self should: [inst class = StompMockFixedClass].
	self should: [inst instVar1 = 'test1'].
	self should: [inst instVar2 class = StompMockFixedClass2].
	self should: [inst instVar2 instVar1= 'test2'].
	self should: [inst instVar3 = 'test3'].
	self should: [inst instVar4 class = StompMockMixedClass].
	self should: [(inst instVar4 at: 1) = 'test4'].
	self should: [(inst instVar4 at: 2) class = StompMockFixedClass2].
	self should: [(inst instVar4 at: 2) instVar1 = 'test5'].
	self should: [inst instVar5 isNil].
	
	"Or you can use exception handling"
	inst := [Object fromStomp: bytes ] on: StompClassNotFound do: [:ex |
			ex resume: (ex className == #StompMockFixedClass2OLD ifTrue: [ StompMockFixedClass2] ifFalse: [ex unresolvedClass])].
	self should: [inst class = StompMockFixedClass].
	self should: [inst instVar1 = 'test1'].
	self should: [inst instVar2 class = StompMockFixedClass2].
	self should: [inst instVar2 instVar1= 'test2'].
	self should: [inst instVar3 = 'test3'].
	self should: [inst instVar4 class = StompMockMixedClass].
	self should: [(inst instVar4 at: 1) = 'test4'].
	self should: [(inst instVar4 at: 2) class = StompMockFixedClass2].
	self should: [(inst instVar4 at: 2) instVar1 = 'test5'].
	self should: [inst instVar5 isNil].