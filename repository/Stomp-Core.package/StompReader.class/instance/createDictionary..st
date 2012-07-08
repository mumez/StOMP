factory
createDictionary: size
	| dic |
	dic := super createDictionary: size.
	self remember: dic.
	^dic