writing
writeWideString: aString
	self writeArraySize: 2.
	self writeTag: StompConstants wideString.
	self writeRawBytes: (self portableUtil bytesFromString: aString)