writing-helper
writtenInstVarNamesWithIndicesOf: writeObject 
	| writeObjectClass cachedNamesIndices instVarNames transientInstVarNames instVarIndices |
	writeObjectClass := writeObject class.
	(cachedNamesIndices := self context instVarNamesWithIndicesOf: writeObjectClass) ifNotNil: [^cachedNamesIndices].
	instVarNames := writeObjectClass allInstVarNames asOrderedCollection.
	transientInstVarNames := writeObject stompTransientInstVarNames.
	transientInstVarNames := transientInstVarNames collect: [:each | each asString] .
	transientInstVarNames do: [:each | instVarNames remove: each ifAbsent:[]].
	instVarIndices := self portableUtil instVarIndicesOf: writeObjectClass from: instVarNames.
	^ self context rememberInstVarNames: instVarNames indices: instVarIndices of: writeObjectClass.
	