actions
instVarNamesWithIndicesAt: classId
	| klass |
	klass := self classAt: classId.
	^ self instVarNamesWithIndicesDictionary at: klass ifAbsent: [#()]