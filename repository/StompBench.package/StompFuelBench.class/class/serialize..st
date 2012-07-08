hooks
serialize: anObject
	| ser |
	ser := (FLSerializer on: ByteArray new writeStream) .
	ser serialize: anObject.
	^ ser stream contents.