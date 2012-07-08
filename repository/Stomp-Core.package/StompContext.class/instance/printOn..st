printing
printOn: aStream
	aStream nextPutAll: self class name.
	aStream nextPutAll: '('.
	aStream cr.
	self objectsDictionary associationsDo: [:assoc |
		assoc printOn: aStream.
		aStream cr.
	].
	aStream nextPutAll: ')'.