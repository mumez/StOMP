writing
writeWideSymbol: aSymbol
	self writeArraySize: 2.
	self writeTag: StompConstants wideSymbol.
	self writeRawBytes: (self portableUtil bytesFromString: aSymbol)