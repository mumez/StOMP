dispatching
readTupleBy: tag 
	tag = StompConstants value ifTrue: [^self readValue].
	tag = StompConstants reference ifTrue: [^self readReference].
	tag = StompConstants byteString ifTrue: [^self readByteString].
	tag = StompConstants byteSymbol ifTrue: [^self readByteSymbol].
	tag = StompConstants wideString ifTrue: [^self readWideString].
	tag = StompConstants wideSymbol ifTrue: [^self readWideString].
	
