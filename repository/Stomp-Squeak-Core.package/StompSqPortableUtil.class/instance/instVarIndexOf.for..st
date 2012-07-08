actions
instVarIndexOf: aClass for: varName 
	^ aClass
		instVarIndexFor: varName asString
		ifAbsent: [0]