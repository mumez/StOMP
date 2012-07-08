writing-helper
writeVersion
	self writeStream nextPutAll: StompConstants header.
	self writeStream nextPut: self defaultVersion "1-255"