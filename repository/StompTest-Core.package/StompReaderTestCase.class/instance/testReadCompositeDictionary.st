tests
testReadCompositeDictionary
	"self debug: #testReadCompositeDictionary"
	| childDic dic readDic |
	childDic := Dictionary new.
	childDic at: #child1 put: 'abcde'.
	dic := Dictionary new.
	dic at: #parent1 put: 'sample string.'.
	dic at: #parent2 put: 100.
	dic at: #parent3 put: #(10 20 30 ).
	dic at: #parent4 put: childDic.
	
	readDic := Object fromStomp: (self compositeDictionaryAnswerBytes).
	
	self should: [readDic size = dic size].
	self should: [(readDic at: #parent1) = (dic at: #parent1)].
	self should: [(readDic at: #parent2) = (dic at: #parent2)].
	self should: [self collectionEquals: (readDic at: #parent3) with: (dic at: #parent3)].
	self should: [self collectionEquals: (readDic at: #parent4) associations with: (dic at: #parent4) associations].