tests
testReadFixedClassWithNilValues
	"self debug: #testReadFixedClassWithNilValues"
	| data |
	data := StompMockFixedClass new.
	data instVar1: 1.
	data instVar2: nil.
	data instVar3: (StompPortableUtil default testFixturesClass double3dot3).
	data instVar4: nil.
	data instVar5: 'FIVE'.
	self
		should: [data
				equals: (Object
						fromStomp: self fixedClassWithNilValuesAnswerBytes
						setting: [:ctx | ctx settings suppressNilWrite: true])]