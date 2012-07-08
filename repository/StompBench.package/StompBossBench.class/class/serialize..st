hooks
serialize: anObject
	| stream bos |
	stream := WriteStream on: ByteArray new.
	bos := BinaryObjectStorage onNew: stream.
	bos nextPut: anObject.
	bos close.
	^stream contents