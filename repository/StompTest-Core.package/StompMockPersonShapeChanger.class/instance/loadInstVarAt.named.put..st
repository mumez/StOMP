actions
loadInstVarAt: varIndex named: varName put: varValue 
	varName = 'fullName' ifTrue: [^ self targetInstance name: varValue ].
		
	^ super loadInstVarAt: varIndex named: varName put: varValue 