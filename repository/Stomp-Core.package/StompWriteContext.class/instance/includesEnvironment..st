actions
includesEnvironment: anEnvironment

	self settings useEnvironment ifFalse: [^false].

	^ self environmentsDictionary includesKey: anEnvironment