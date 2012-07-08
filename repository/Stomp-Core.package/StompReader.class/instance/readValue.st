reading-dispatched
readValue
	| type attributesSize attribDict newInst |
	type := self readType.
	(type bitShift: -4) = 2r1000 ifFalse: [ | id |
		id := self readObjectOf: type.
		^ id < 0 
			ifTrue: [self readInstanceContentClassCoded: id negated]
			ifFalse: [self readInstanceContentAt: id]
	].
	attributesSize := type bitAnd: 16rF.
	attributesSize = 1 ifTrue: [ | key value |
		key := self readPositiveFixNum: self readStream next.
		value := self basicReadObject.
		key = StompConstants klassName ifTrue: [^ self readInstanceContentClassNamed: (self identifierStringFromBytes: value) in: nil].
	].
	attribDict := Dictionary new: attributesSize.
	1 to: attributesSize do: [:idx |
		attribDict at: (self readPositiveFixNum: self readStream next) put: self basicReadObject
	].
	newInst :=  self readValueWithAttributes: attribDict.
	^newInst
	