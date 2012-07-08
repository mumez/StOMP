writing-helper
basicWriteInstVarsOf: writeObject 
	
	| instVarNamesWithIndices |
	instVarNamesWithIndices := self writtenInstVarNamesWithIndicesOf: writeObject.
	self writeMapSize: 1.
	self writeArraySize: instVarNamesWithIndices size.
	instVarNamesWithIndices do: [:each | super writeObject: (self bytesFromIdentifierString: (each at: 1))].
	self writeArraySize: instVarNamesWithIndices size.
	instVarNamesWithIndices do: [:nmAndIndex |
		| nm idx val | 
		nm := nmAndIndex at: 1.
		idx := nmAndIndex at: 2.
		val := writeObject stompInstVarNamed: nm writtenAs: (writeObject instVarAt: idx).
		self writeObject: val
	].