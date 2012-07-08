actions
classIdOf: aClass ifAbsent: block
	^ self classesDictionary at: aClass ifAbsent: block