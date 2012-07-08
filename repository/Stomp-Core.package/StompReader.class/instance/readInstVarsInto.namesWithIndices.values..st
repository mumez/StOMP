reading-instance variables
readInstVarsInto: anInstance namesWithIndices: varNamesWithIndices values: varValues
	| shapeChangerClass |
	shapeChangerClass := self context shapeChangerFor: anInstance class.
	shapeChangerClass ifNil: [ 
		varNamesWithIndices with: varValues do: [:nameWithIndex :value |
			anInstance stompInstVarAt: (nameWithIndex at: 2) named: (nameWithIndex at: 1) put: value].
	] ifNotNil: [ | shapeChanger |
		shapeChanger := shapeChangerClass on: anInstance.
		varNamesWithIndices with: varValues do: [:nameWithIndex :value | 
			shapeChanger loadInstVarAt: (nameWithIndex at: 2) named: (nameWithIndex at: 1) put: value].
	].
		
	^anInstance