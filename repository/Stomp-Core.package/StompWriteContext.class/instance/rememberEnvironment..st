actions
rememberEnvironment: anEnvironment

	self settings useEnvironment ifFalse: [^self].
	anEnvironment name == #Smalltalk ifTrue: [^self].

	^ self environmentsDictionary at: anEnvironment put: (self environmentsDictionary size)