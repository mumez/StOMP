writing
writeSymbol: aSymbol
	(self portableUtil isWideSymbol: aSymbol) ifTrue: [^self writeWideSymbol: aSymbol].
	self writeByteSymbol: aSymbol