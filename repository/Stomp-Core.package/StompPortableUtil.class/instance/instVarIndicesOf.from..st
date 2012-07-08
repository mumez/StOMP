actions
instVarIndicesOf: aClass from: instVarNames
	^ instVarNames collect: [:each |
		self instVarIndexOf: aClass for: each
	] 