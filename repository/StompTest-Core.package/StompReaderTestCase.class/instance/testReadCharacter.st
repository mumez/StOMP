tests
testReadCharacter
	"self debug: #testReadCharacter"
	
	| char1 char2 |
	char1 := $A.	
	self should: [(Object fromStomp:(#[147 161 2 253 65])) = char1].
	char2 := (StompPortableUtil default characterFromUnicode: 12354). "Japanese Hiragana 'A' "	
	self should: [(Object fromStomp:(#[147 161 2 253 205 48 66])) = char2].
	

	