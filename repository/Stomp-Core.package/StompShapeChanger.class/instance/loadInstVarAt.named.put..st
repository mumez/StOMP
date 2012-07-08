actions
loadInstVarAt: varIndex named: varName put: varValue 
	"override"
	 self targetInstance stompInstVarAt: varIndex named: varName put: varValue 