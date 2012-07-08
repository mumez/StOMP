tests
testReadString
	"self debug: #testReadString"
	| str1 |
	str1 := 'Hi, I''m String-object'.
	self should: [(Object fromStomp:(self stringAnswerBytes)) = str1].
	
	