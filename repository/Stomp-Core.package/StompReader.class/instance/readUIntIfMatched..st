reading-helper
readUIntIfMatched: type
	(type <= 16r7F) ifTrue: [^ self readPositiveFixNum: type].
	type = MpConstants uint8
		ifTrue: [^ self readUint8].
	type = MpConstants uint16
		ifTrue: [^ self readUint16].
	type = MpConstants uint32
		ifTrue: [^ self readUint32].
	type = MpConstants uint64
		ifTrue: [^ self readUint64].
	^-1