reading-helper
readCollectionFieldsInto: anInstance
	| size |
	size := self readSizeOfArray.
	^ self readCollectionFieldsInto: anInstance sized: size