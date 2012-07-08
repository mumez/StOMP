reading-dispatched
readByteString
"	| type bytes |
	type := self readType.
	type = MpConstants raw16
		ifTrue: [bytes := super readRaw16]
		ifFalse: 
			[type = MpConstants raw32
				ifTrue: [bytes := super readRaw32]
				ifFalse: [bytes := super readFixRaw: type]]."
	^self portableUtil byteStringFromBytes: self basicReadObject