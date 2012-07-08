reading-instance variables
readInstVarsInto: anInstance fromInstVarReferenceArraySized: arraySize
	| id  namesWithIndices values |
	id :=  self basicReadObject.
	namesWithIndices := self context instVarNamesWithIndicesAt: id.
	values := Array new: namesWithIndices size.
	1 to: values size do: [:idx | values at: idx put: self readObject].
	self readInstVarsInto: anInstance namesWithIndices: namesWithIndices values: values