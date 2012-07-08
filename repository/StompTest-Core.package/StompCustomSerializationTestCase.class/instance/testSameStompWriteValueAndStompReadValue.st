testing
testSameStompWriteValueAndStompReadValue
	"self debug: #testSameStompWriteValueAndStompReadValue"

	| obj1 array array2 |
	obj1 := StompMockCustomWriteObject new name: 'AA'; email: 'aa@example.com'.
	array := Array with: obj1 with: obj1.

	array2 := Object fromStomp: array toStomp.
	self should: [(array2 at: 1) = (array2 at: 2)].