reading-helper
readSizeOfArrayIfMatched: type
	((type bitShift: -4) = 2r1001) ifTrue: [^ type bitAnd: 16rF].
	type = MpConstants array16
		ifTrue: [^ MpPortableUtil default readUint16From: self readStream].
	type = MpConstants array32
		ifTrue: [^ MpPortableUtil default readUint32From: self readStream].
	^-1