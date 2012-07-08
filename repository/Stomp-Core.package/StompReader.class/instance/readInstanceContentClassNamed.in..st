reading-helper
readInstanceContentClassNamed: clsName in: envName
	| actualClass |
	actualClass := self context classNamed: clsName in: envName.
	actualClass ifNil: [actualClass :=  StompClassNotFound
							signal: clsName environment: envName context: self context].
	self context rememberClass: actualClass. 
	^self readInstanceContentOf: actualClass