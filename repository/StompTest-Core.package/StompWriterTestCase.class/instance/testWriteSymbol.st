tests
testWriteSymbol
	"self debug: #testWriteSymbol"
	| symbol1 |
	symbol1 := #abcdefg.
	self should: [symbol1 toStomp = self symbolAnswerBytes].
	
	
	
	