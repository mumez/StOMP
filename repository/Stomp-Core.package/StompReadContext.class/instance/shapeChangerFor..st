shape changing
shapeChangerFor: existingClass
	shapeChangersDictionary ifNil: [^nil].
	^self shapeChangersDictionary at: existingClass ifAbsent: []