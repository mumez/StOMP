testing
testRenamedRead
	"self debug: #testRenamedRead"
	| bytes inst expected |
	bytes := self fixedClassOLDAnswerArray1.
	inst := Object fromStomp: bytes setting: [:ctx |
		ctx registerClassOldName: #StompMockFixedClassOLD for: StompMockFixedClass.
	].
	
	expected := StompMockFixedClass new.
	expected instVar1: 1.
	expected instVar2: #two.
	expected instVar3: (StompPortableUtil default testFixturesClass double3dot3).
	expected instVar4: false.
	expected instVar5: 'FIVE'.
	
	self should: [inst equals: expected].