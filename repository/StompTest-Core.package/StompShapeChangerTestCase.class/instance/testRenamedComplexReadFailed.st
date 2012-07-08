testing
testRenamedComplexReadFailed
	"self debug: #testRenamedComplexReadFailed"
	| bytes arr |
	bytes := self renamedComplexReadAnswerArray2.
	arr := Object fromStomp: bytes setting: [:ctx |
		ctx registerClassOldName: #StompMockShapeChangedObjectFAILED for: StompMockShapeChangedObject.
	].
	
	self should: [arr class = Array].
	self should: [arr size = 4].
	self should: [arr = #(nil nil nil 'here')].