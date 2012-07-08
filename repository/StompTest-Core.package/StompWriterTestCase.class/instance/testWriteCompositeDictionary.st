tests
testWriteCompositeDictionary
	"self debug: #testWriteCompositeDictionary"
	| childDic dic bytes rawDic rawChildDic |
	childDic := Dictionary new.
	childDic at: #child1 put: 'abcde'.
	dic := Dictionary new.
	dic at: #parent1 put: 'sample string.'.
	dic at: #parent2 put: 100.
	dic at: #parent3 put: #(10 20 30 ).
	dic at: #parent4 put: childDic.
	bytes := dic toStomp.
	rawDic := Object fromMessagePack: bytes.
	self should: [rawDic size = 4].
	self should: [(rawDic at: #(#[5] #[112 97 114 101 110 116 49])) = #(#[4] #[115 97 109 112 108 101 32 115 116 114 105 110 103 46])].
	self should: [(rawDic at: #(#[5] #[112 97 114 101 110 116 50])) = 100].
	self should: [(rawDic at: #(#[5] #[112 97 114 101 110 116 51])) = #(10 20 30)].
	rawChildDic := rawDic at: #(#[5] #[112 97 114 101 110 116 52]).
	self should: [(rawChildDic at: #(#[5] #[99 104 105 108 100 49])) = #(#[4] #[97 98 99 100 101])].
	