*Stomp-Core-reading
stompInstVarAt: instVarIndex named: varName put: aValue 
	instVarIndex = 0 ifTrue: [
		^ StompPortableUtil default instVarNamed: varName put: aValue in: self
	].
	self instVarAt: instVarIndex put: aValue