converting
stringFromBytes: aByteArray
	| str |
	str := aByteArray asString.
	^[str convertFromWithConverter: (UTF8TextConverter new)] on: Error do: [:ex | ^str]