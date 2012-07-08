private
bytesFromIdentifierString: aString 
	"Usually class & variable names are single bytes"
	^ self settings supportsMultibyteIdentifiers
		ifTrue: [self portableUtil bytesFromString: aString]
		ifFalse: [aString asByteArray]