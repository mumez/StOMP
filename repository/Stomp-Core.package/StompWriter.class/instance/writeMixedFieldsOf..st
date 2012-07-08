writing-helper
writeMixedFieldsOf: writeObject 
	
	| shouldWriteInstanceVariables |
	writeObject class instSize = 0 ifTrue: [^self writeIndexFieldsOf: writeObject].
	
	shouldWriteInstanceVariables := writeObject stompShouldWriteInstanceVariables.
	shouldWriteInstanceVariables ifTrue: [
		self writeObject: writeObject size.
		self writeInstVarsOf: writeObject
	].
	self writeIndexFieldsOf: writeObject