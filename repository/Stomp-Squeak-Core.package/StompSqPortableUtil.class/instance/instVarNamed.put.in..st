actions
instVarNamed: varName put: value in: anObject
	"Note that when varName is invalid, just silently ignore"
	| index |
	index := anObject class
						instVarIndexFor: varName asString
						ifAbsent: [^self].
	anObject instVarAt: index put: value
		
	