tests
testWriteByteArray
	"self debug: #testWriteByteArray"
	| byteArray |
	byteArray := (ByteArray with: 10 with: 20 with: 30).
	self should: [byteArray toStomp = #[163 10 20 30]].
	
	
	