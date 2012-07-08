testing
testShapeChangedReadCircularReference
	"self debug: #testShapeChangedReadCircularReference"
	| bytes obj |
	bytes := self mockPersonAnswerArray1.
	obj := Object fromStomp: bytes setting: [:ctx |
		ctx registerClassOldName: #StompMockPersonOLD shapeChanger: StompMockPersonShapeChanger for: StompMockPerson.
	].
 
	self should: [obj class = StompMockPerson].
	self should: [obj name = 'A'].
	self should: [obj requests size = 2].
	self should: [(obj requests detect: [:each | each id = 1]) owner = obj].
	self should: [(obj requests detect: [:each | each id = 2]) owner name = 'B'].
	self should: [(obj requests detect: [:each | each id = 2]) owner partners size = 1].
	self should: [((obj requests detect: [:each | each id = 2]) owner partners at: 1) = obj].