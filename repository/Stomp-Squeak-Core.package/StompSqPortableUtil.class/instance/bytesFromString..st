converting
bytesFromString: aString
	aString isWideString ifTrue: [^aString squeakToUtf8 asByteArray].
	^aString asByteArray