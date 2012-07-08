reading-primitives
readRaw32
	| bytes |
	bytes := super readRaw32.
	self remember: bytes.
	^bytes