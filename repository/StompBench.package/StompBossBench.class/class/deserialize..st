hooks
deserialize: bytes
	| stream bos data |
	stream := ReadStream on: bytes.
	bos := BinaryObjectStorage onOld: stream.
	data := bos next.
	bos close.
	^data