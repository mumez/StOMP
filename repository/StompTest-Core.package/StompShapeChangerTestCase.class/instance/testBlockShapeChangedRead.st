testing
testBlockShapeChangedRead
	"self debug: #testBlockShapeChangedRead"
	| bytes inst expected |
	bytes := self fixedClassOLDAnswerArray2.
	inst := Object fromStomp: bytes setting: [:ctx |
		ctx registerShapeChangerRenameBy: [:target :oldName :value | 
			oldName = 'instVar2OLD' ifTrue: [target instVar2: value].
		] initializeBy: [:target | 
			target instVar5: 'FIVE'
		] for: StompMockFixedClass.
	].
	
	expected := StompMockFixedClass new.
	expected instVar1: 1.
	expected instVar2: #renamedTwo.
	expected instVar3: (StompPortableUtil default testFixturesClass double3dot3).
	expected instVar4: false.
	expected instVar5: 'FIVE'.
	
	self should: [inst equals: expected].