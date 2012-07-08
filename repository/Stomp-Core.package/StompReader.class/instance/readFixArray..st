reading-primitives
readFixArray: firstByte
	| size |
	size := firstByte bitAnd: 16rF.
	^ self readSmallArraySized: size