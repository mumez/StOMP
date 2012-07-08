writing
writeString: aString
	(self portableUtil isWideString: aString) ifTrue: [^self writeWideString: aString].
	self writeByteString: aString