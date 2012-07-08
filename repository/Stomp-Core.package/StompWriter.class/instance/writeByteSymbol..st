writing
writeByteSymbol: aSymbol
	self writeArraySize: 2.
	self writeTag: StompConstants byteSymbol.
	self writeRawBytes: aSymbol asByteArray