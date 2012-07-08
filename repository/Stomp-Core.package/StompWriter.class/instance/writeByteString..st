writing
writeByteString: aString
	self writeArraySize: 2.
	self writeTag: StompConstants byteString.
	self writeRawBytes: (self portableUtil bytesFromByteString: aString)