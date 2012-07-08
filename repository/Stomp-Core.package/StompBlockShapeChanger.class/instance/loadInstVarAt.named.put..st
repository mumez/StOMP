actions
loadInstVarAt: varIndex named: varName put: varValue 

	loadInstVarsBlock ifNotNil: [loadInstVarsBlock value: self targetInstance value: varName value: varValue]. 
	
	super loadInstVarAt: varIndex named: varName put: varValue 