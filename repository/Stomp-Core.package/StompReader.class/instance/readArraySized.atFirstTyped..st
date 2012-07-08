dispatching
readArraySized: size atFirstTyped: firstType
	| array firstElem |
	array := self createArray: size.
	self remember: array.
	firstElem := self readObjectOf: firstType.
	array at: 1 put: firstElem.
	2 to: size do: [:idx | array at: idx put: self readObject].
	^array