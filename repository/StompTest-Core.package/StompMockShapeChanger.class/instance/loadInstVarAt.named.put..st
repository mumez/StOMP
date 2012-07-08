actions
loadInstVarAt: varIndex named: varName put: varValue 
	"renamed"
	varName = 'instVar2OLD' ifTrue: [^ self targetInstance instVar2: varValue ].
	
	"removed"
	"varName = 'instVar6' ifTrue: [^ self]."
	
	^ super loadInstVarAt: varIndex named: varName put: varValue 