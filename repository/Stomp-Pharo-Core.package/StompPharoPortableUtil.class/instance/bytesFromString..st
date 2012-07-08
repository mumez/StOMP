converting
bytesFromString: aString
	aString isWideString ifTrue: [^(aString convertToWithConverter: (UTF8TextConverter new)) asByteArray].
	^aString asByteArray