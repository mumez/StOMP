tests
testWriteClassNameAndIdsSuppressNilWrites
	"self debug: #testWriteClassNameAndIdsSuppressNilWrites"
	| data1 data2 data3 data4 wstr bytes  data |
	data1 := StompMockFixedClass new.
	data1 instVar1: 1.
	data1 instVar2: #one.
	
	data2 := StompMockFixedClass new.
	data2 instVar1: 2.
	data2 instVar2: #two.
	
	data3 := StompMockMixedClass new.
	data3 instVar1: 3.
	data3 instVar2: #three.
	
	data4 := StompMockMixedClass new.
	data4 instVar1: 4.
	data4 instVar2: #four.
	
	data := Array with: data1 with: data2 with: data3 with: data4.
	
	wstr := StompWriter onBytes: ByteArray new.
	wstr settings suppressNilWrite: true.
	wstr nextPut: data.
	bytes := wstr contents. 
		
	self should: [bytes = self classNameAndIdsSuppressNilWritesAnswerBytes]
	
	
	
	