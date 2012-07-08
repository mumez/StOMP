decoding
decodeFrom: aStream
	| pos |
	self readStream: aStream "binary".
	pos := aStream position.
	((self portableUtil nextAvailable: 2 from: aStream) = StompConstants header) ifTrue: [
		self version: aStream next asInteger.
	]. 
	aStream position: pos. 
	^self decode