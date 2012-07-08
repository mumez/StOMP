actions
loadInstVarAt: varIndex named: varName put: varValue 
	"renamed"
	varName = 'oldNamedVar1' ifTrue: [^ self targetInstance renamedAtt1: varValue ].
		
	^ super loadInstVarAt: varIndex named: varName put: varValue 