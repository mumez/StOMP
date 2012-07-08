reading-helper
readInstanceContentClassCoded: clsCode
	| actualClass |
	actualClass := self portableUtil popularClassMap classAt: clsCode.
	actualClass ifNil: [actualClass :=  StompClassNotFound
							signal: clsCode printString context: self context].
	^self readInstanceContentOf: actualClass