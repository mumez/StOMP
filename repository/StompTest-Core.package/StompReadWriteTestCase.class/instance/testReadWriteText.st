tests
testReadWriteText
	"self debug: #testReadWriteText"
	| bytes orig text |
	(StompPortableUtil default classNamed: #Text) ifNil: [^self].
	orig := 'aaa' asText allBold.
	bytes := orig toStomp.
	text := Object fromStomp: bytes.
	
	self should: [orig = text]