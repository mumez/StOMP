reading-helper
readInstanceContentAt: classId
	| actualClass |
	actualClass := self context classAt: classId.
	^self readInstanceContentOf: actualClass