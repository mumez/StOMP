template
doBench: selector repeating: repeats
	| target bytes readTime times writeTime |
	target := self perform: selector.
	times := repeats.
	
	self checkSerializerExists ifFalse: [self error: 'Serializer does not exist!'].
	writeTime := [
		times timesRepeat: [bytes := self serialize: target]
	] timeToRun.
	readTime := [
		times timesRepeat: [self deserialize: bytes]
	] timeToRun.

	Transcript cr; show: thisContext sender selector; space;
		show: 'writeTime: ', writeTime printString; space;
		show: 'readTime: ', readTime printString; space;
		show: 'total: ', (writeTime + readTime) printString; space;
		show: 'size: ', (bytes size printString)