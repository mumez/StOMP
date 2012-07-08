actions
instVarNamed: varName put: value in: anObject
	"Note that when varName is invalid, just silently ignore"
	| index |
	index := self instVarIndexOf: anObject class for: varName.
	index = 0 ifTrue: [^self].
	anObject instVarAt: index put: value
		
	