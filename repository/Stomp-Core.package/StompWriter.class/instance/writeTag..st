writing-helper
writeTag: tagInt
	"tagInt should be 0-255"
	self writeStream nextPut: (2r10100001).
	self writeStream nextPut: tagInt