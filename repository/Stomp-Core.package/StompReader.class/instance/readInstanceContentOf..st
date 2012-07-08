reading-helper
readInstanceContentOf: aClass
	| inst newInst newKey |
	inst := aClass stompCreateInstanceFrom: self.
	newKey := self remember: inst.
	aClass stompLoadContentsOnCreation ifFalse: [inst stompReadContentFrom: self].
	self initializeInstance: inst.
	newInst := inst stompReadValue.
	newKey ifNotNil: [self remember: newInst at: newKey].
	^ newInst