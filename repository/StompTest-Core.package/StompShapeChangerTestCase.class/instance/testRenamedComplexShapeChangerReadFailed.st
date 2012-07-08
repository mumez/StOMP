testing
testRenamedComplexShapeChangerReadFailed
	"self debug: #testRenamedComplexShapeChangerReadFailed"
	| bytes arr |
	bytes := self renamedComplexReadAnswerArray4.
	arr := Object fromStomp: bytes setting: [:ctx |
		ctx registerShapeChanger: StompMockShapeChangerForRenamedComplexRead for: StompMockFixedClass.
	].
	
	self should: [arr class = Array].
	self should: [arr size = 4].
	self should: [arr = #(nil nil nil 'here')].