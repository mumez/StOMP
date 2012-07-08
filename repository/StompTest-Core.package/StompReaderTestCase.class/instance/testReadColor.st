tests
testReadColor
	"self debug: #testReadColor"
	| color1 color2 |
	color1 := StompPortableUtil default testFixturesClass blueColor.
	self should: [(Object fromStomp:(self colorAnswerBytes1)) = color1].
	
	color2 := StompPortableUtil default testFixturesClass yellowColor.
	self should: [(Object fromStomp:(self colorAnswerBytes2)) = color2]
	
	