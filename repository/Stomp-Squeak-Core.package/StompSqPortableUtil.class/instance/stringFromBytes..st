converting
stringFromBytes: aByteArray
	| str |
	str := aByteArray asString.
	^[str utf8ToSqueak] on: Error do: [:ex | ^str]