dispatching
readSmallArraySized: size 
	| firstType |
	size = 0 ifTrue: [| arr | self remember: (arr := self createArray: 0). ^arr].
	firstType := self readType.
	firstType = 16rA1 ifTrue: [| firstByte |
			firstByte := self readStream next.
			^ (StompConstants isTupleTag: firstByte)
				ifTrue: [self readTupleBy: firstByte]
				ifFalse: [self
						readArraySized: size
						atFirst: (ByteArray with: firstByte)]].
	^self readArraySized: size atFirstTyped: firstType