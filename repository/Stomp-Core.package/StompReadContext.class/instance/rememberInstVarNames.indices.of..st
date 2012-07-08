actions
rememberInstVarNames: instVarNames indices: instVarIndices of: aClass
	| ord |
	ord := OrderedCollection new: instVarNames size.
	instVarNames with: instVarIndices do: [:name :idx | ord add: (Array with: name with: idx)]. 
	self instVarNamesWithIndicesDictionary at: aClass put: ord.
	^ord