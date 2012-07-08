writing-helper
writeInstVarsOf: writeObject 
	|  cachedNamesWithIndices |
	self settings suppressNilWrite ifTrue: [^self writeNotNilInstVarsOf: writeObject].
	
	(cachedNamesWithIndices := self context instVarNamesWithIndicesOf: writeObject class) == nil ifFalse: [
		^ self writeInstVarsOf: writeObject using: cachedNamesWithIndices
	].
	
	self basicWriteInstVarsOf: writeObject 