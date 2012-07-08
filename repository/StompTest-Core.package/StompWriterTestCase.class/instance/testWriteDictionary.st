tests
testWriteDictionary
	"self debug: #testWriteDictionary"
	| dic bytes rawDic |
	dic := Dictionary new.
	dic at: #key1 put: 'value1'.
	dic at: #key2 put: 'value2'.
	dic at: #key3 put: 'value3'.
	
	bytes := dic toStomp.
	rawDic := Object fromMessagePack: bytes.
	self should: [rawDic size = 3].
	self should: [(rawDic at: #(#[5] #[107 101 121 49])) = #(#[4] #[118 97 108 117 101 49])].
	self should: [(rawDic at: #(#[5] #[107 101 121 50])) = #(#[4] #[118 97 108 117 101 50])].
	self should: [(rawDic at: #(#[5] #[107 101 121 51])) = #(#[4] #[118 97 108 117 101 51])].
	