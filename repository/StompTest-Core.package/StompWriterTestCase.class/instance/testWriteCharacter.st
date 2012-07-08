tests
testWriteCharacter
	"self debug: #testWriteCharacter"
	| char1 char2 |
	char1 := $A.	
	self should: [char1 toStomp =  #[147 161 2 253 65]].
	char2 := (StompPortableUtil default characterFromUnicode: 12354). "Japanese Hiragana 'A' "	
	self should: [char2 toStomp =  #[147 161 2 253 205 48 66]].
	
	
	