tests
testWriteColor
	"self debug: #testWriteColor"
	| color1 bytes1 color2 bytes2 |
	color1 := StompPortableUtil default testFixturesClass blueColor.
	bytes1 := color1 toStomp.
	self should: [bytes1 = self colorAnswerBytes1].
	
	color2 := StompPortableUtil default testFixturesClass yellowColor.
	bytes2 := color2 toStomp.
	self should: [bytes2 = self colorAnswerBytes2]
	
	
	
	