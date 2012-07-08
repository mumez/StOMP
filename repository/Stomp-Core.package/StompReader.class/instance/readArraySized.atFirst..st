dispatching
readArraySized: size atFirst: firstElem
	| array |
	array := self createArray: size.
	self remember: array.
	array at: 1 put: firstElem.
	2 to: size do: [:idx | array at: idx put: self readObject].
	^array