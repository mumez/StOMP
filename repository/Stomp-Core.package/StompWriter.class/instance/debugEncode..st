debugging
debugEncode: bytes
	|  encoded counterDic decoder |
	encoded := self encode: bytes.
	self context objectsDictionary.
	counterDic := Dictionary new.
	self context objectsDictionary keysAndValuesDo: [:k :v | counterDic at: v put: k].
	counterDic inspect.
	decoder := StompReader new.
	decoder decode: encoded.
	decoder context objectsDictionary inspect.
	^encoded