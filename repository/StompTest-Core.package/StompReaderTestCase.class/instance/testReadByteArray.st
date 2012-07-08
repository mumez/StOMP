tests
testReadByteArray
	"self debug: #testReadByteArray"
	
	| byteArray |
	byteArray := (ByteArray with: 10 with: 20 with: 30).
	
	self should: [(Object fromStomp: (#[163 10 20 30])) = byteArray].
	