*Stomp-Core-reading
stompBasicReadContentFrom: stompReader 
	| fieldsInfo |
	self class isFixed ifTrue: [^ stompReader readInstVarsInto: self].
	
	fieldsInfo := stompReader context fieldsInfo.
	fieldsInfo isPureIndexFields ifTrue: [ ^ stompReader readIndexFieldsInto: self sized: fieldsInfo indexFieldSize].
	fieldsInfo isMixedFields ifTrue: [
		self stompShouldWriteInstanceVariables ifTrue: [stompReader readInstVarsInto: self].
		stompReader readIndexFieldsInto: self sized: stompReader readSizeOfArray.
	].
	
	^self