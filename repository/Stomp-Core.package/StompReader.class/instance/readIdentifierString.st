private
readIdentifierString
	| type sz |
	type := self readType.
	(sz := type bitAnd: 2r01011111 <= 31) ifTrue: [
		^ self identifierStringFromBytes: (self readStream next: sz)
	].
	type = MpConstants raw16 ifTrue: [^ self identifierStringFromBytes: super readRaw16].
	type = MpConstants raw32 ifTrue: [^ self identifierStringFromBytes: super readRaw32].
	