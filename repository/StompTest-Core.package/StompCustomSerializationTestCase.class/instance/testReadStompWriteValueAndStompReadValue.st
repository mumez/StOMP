testing
testReadStompWriteValueAndStompReadValue
	"self debug: #testReadStompWriteValueAndStompReadValue"

	| object1 object2 stomp1 docodedTuple className array stomp2 readArray inArray readObject1 readObject2 |
	object1 := StompMockCustomWriteObject new.
	object1 name: 'Masashi Umezawa'.
	object1 email: 'mu@example.com'.
	
	object2 := StompMockCustomWriteObject new.
	object2 name: 'Shiho Umezawa'.
	object2 email: 'su@example.com'.
	
	stomp1 := object1 toStomp.
	docodedTuple := MpDecoder decode: stomp1.
	className := ((docodedTuple at: 2) at: StompConstants klassName) asString asSymbol.
	self should: [className = #StompMockMementoArray].

	array := Array with: object1 with: object2 with: (Array with: object1 with: object2 with: 3).
	stomp2 := array toStomp.
	
	readArray := Object fromStomp: stomp2.
	inArray := readArray at: 3.

	self should: [(readArray at: 1) = (inArray at: 1)].
	self should: [(readArray at: 2) = (inArray at: 2)].
	self shouldnt: [(readArray at: 3) = (Array with: object1 with: object2 with: 3)].
	
	readObject1 := readArray at: 1.
	self should: [readObject1 name = 'Masashi Umezawa'].	
	self should: [readObject1 email = 'mu@example.com'].

	readObject2 := readArray at: 2.
	self should: [readObject2 name = 'Shiho Umezawa'].	
	self should: [readObject2 email = 'su@example.com']
