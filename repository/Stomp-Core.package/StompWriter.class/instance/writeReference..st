writing
writeReference: refId
	self writeArraySize: 2.
	self writeTag: StompConstants reference.
	self writeInteger: refId