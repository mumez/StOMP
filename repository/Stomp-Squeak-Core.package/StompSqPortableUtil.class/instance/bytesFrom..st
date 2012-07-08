actions
bytesFrom: bitsObject 
	"override"
	bitsObject class isWords
		ifTrue: [^ ByteArray streamContents: [:str | str nextWordsPutAll: bitsObject]].
	^ super bytesFrom: bitsObject