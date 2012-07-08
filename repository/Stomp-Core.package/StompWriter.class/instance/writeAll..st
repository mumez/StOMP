writing-helper
writeAll: collObject
	| sz  |
	sz := collObject size. 
	self writeArraySize: sz.
	collObject stompDo: [:each | self nextPut: each]