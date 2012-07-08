stream-like
nextPutAll: aCollectionOfObject
	aCollectionOfObject do: [:each | self nextPut: each]