tests
testReadDictionary
	"self debug: #testReadDictionary"
	| dic |
	dic := Dictionary new.
	dic at: #key1 put: 'value1'.
	dic at: #key2 put: 'value2'.
	dic at: #key3 put: 'value3'.
	
	self should: [self collectionEquals: (Object fromStomp: (self dictionaryAnswerBytes)) with: dic]