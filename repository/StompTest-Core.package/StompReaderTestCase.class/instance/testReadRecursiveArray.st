tests
testReadRecursiveArray
	"self debug: #testReadRecursiveArray"
	| arr readArray |
	arr := Array new: 3.
	arr at: 1 put: 10.
	arr at: 2 put: 20.
	arr at: 3 put: arr.
	
	readArray := (Object fromStomp:(self recursiveArrayAnswerBytes)).
	
	self should: [readArray size = arr size].
	self should: [(readArray at: 1) = (arr at: 1)].
	self should: [(readArray at: 2) = (arr at: 2)].
	self should: [(readArray at: 3) identityHash= readArray identityHash].
	
	