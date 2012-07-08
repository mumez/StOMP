testing
putReferenceOf: anObject ifExists: aBlock
	| refId |
	refId := self context at: anObject ifAbsent: [].
	refId notNil ifTrue: [^aBlock value: refId].
	
	self rememberReferenceOf: anObject