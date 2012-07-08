tests
testWriteString
	"self debug: #testWriteString"
	| str1 |
	str1 := 'Hi, I''m String-object'.
	self should: [str1 toStomp = self stringAnswerBytes].
	
	
	
	