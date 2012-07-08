reading-primitives
readFixRaw: type
	| bytes |
	bytes := super readFixRaw: type.
	self remember: bytes.
	^bytes