writing-helper
writeNotNilInstVarsOf: writeObject 
	| instVarNamesWithIndices nameAndValues |
	instVarNamesWithIndices := self writtenInstVarNamesWithIndicesOf: writeObject.
	nameAndValues := OrderedCollection new.
	instVarNamesWithIndices
		do: [:nmAndIndex | 
			| nm idx val | 
			nm := nmAndIndex at: 1.
			idx := nmAndIndex at: 2.
			val := writeObject stompInstVarNamed: nm writtenAs: (writeObject instVarAt: idx).
			val ifNotNil: [nameAndValues add: (Array with: (self bytesFromIdentifierString: (nm)) with: val)]].
	
	self writeMapSize: 1.
	self writeArraySize: nameAndValues size.
	nameAndValues do: [:each | super writeObject: (each at: 1)].
	self writeArraySize: nameAndValues size.
	nameAndValues do: [:each | self writeObject: (each at: 2)].	