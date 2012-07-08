testing
testRenamedComplexRead
	"self debug: #testRenamedComplexRead"
	| bytes arr obj1 obj2 obj3 |
	bytes := self renamedComplexReadAnswerArray1.
	arr := Object fromStomp: bytes setting: [:ctx |
		ctx registerClassOldName: #StompMockShapeChangedObjectOLD for: StompMockShapeChangedObject.
	].
	
	self should: [arr class = Array].
	self should: [arr size = 3].
	obj1 := arr at: 1.
	self should: [obj1 renamedAtt1 = 1].
	self should: [obj1 addedAtt1 = 2].
	self should: [obj1 originalAtt1 = 3].
	obj2 := arr at: 2.
	self should: [obj2 renamedAtt1 = 11].
	self should: [obj2 addedAtt1 = 2].
	self should: [obj2 originalAtt1 = 33].
	obj3 := arr at: 3.
	self should: [obj3 = obj1].