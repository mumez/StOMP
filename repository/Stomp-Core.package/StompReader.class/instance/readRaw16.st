reading-primitives
readRaw16
	| bytes |
	bytes := super readRaw16.
	self remember: bytes.
	^bytes