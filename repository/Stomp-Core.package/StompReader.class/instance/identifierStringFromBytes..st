private
identifierStringFromBytes: byteArray 
	byteArray ifNil: [^nil].
	^ self settings supportsMultibyteIdentifiers
		ifTrue: [self portableUtil stringFromBytes: byteArray]	
		ifFalse: [byteArray asString]