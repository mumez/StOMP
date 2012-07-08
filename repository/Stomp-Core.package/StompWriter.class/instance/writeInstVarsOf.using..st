writing-helper
writeInstVarsOf: writeObject using: cachedNamesWithIndices
	| classId |
	classId := self context classIdOf: writeObject class ifAbsent:[^ self basicWriteInstVarsOf: writeObject].
	self writeArraySize: cachedNamesWithIndices size + 1. 
	self writeObject: classId.
	cachedNamesWithIndices do: [:nmAndIndex |
		| nm idx val | 
		nm := nmAndIndex at: 1.
		idx := nmAndIndex at: 2.
		val := writeObject stompInstVarNamed: nm writtenAs: (writeObject instVarAt: idx).
		self writeObject: val
	].