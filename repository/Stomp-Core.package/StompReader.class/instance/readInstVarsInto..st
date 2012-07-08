reading-helper
readInstVarsInto: anInstance
	| type arraySize varNames varIndices valueSize namesWithIndices values |
	type := self readType. 
	arraySize := ((type bitShift: -4) = 2r1001)
		ifTrue: [type bitAnd: 16rF]
		ifFalse: [type = 16rDC ifTrue: [MpPortableUtil default readUint16From: self readStream]].
	arraySize == nil ifFalse: [^ self readInstVarsInto: anInstance fromInstVarReferenceArraySized: arraySize].
	
	varNames := self basicReadObject collect: [:each | self identifierStringFromBytes: each].
	varIndices := self portableUtil instVarIndicesOf: anInstance class from: varNames.
	namesWithIndices := self context rememberInstVarNames: varNames indices: varIndices of: anInstance class.
	
	valueSize := self readSizeOfArray.
	values := OrderedCollection new: valueSize.
	valueSize timesRepeat: [values add: (self readObject)].
	^ self readInstVarsInto: anInstance namesWithIndices: namesWithIndices values: values