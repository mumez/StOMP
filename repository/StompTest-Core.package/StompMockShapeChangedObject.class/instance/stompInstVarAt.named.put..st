reading-stomp
stompInstVarAt: instVarIndex named: varName put: value 
	varName = 'oldNamedVar1' ifTrue: [^self renamedAtt1: value].

	super stompInstVarAt: instVarIndex named: varName put: value 