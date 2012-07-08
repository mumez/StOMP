*Stomp-Core-reading
stompReadContentFrom: stompReader 
	| fieldsInfo |
	fieldsInfo := stompReader context fieldsInfo.
	fieldsInfo isNil ifTrue: [^self].
	fieldsInfo isPureIndexFields ifTrue: [ ^ stompReader readCollectionFieldsInto: self sized: fieldsInfo indexFieldSize].
	fieldsInfo isMixedFields ifTrue: [
		self stompShouldWriteInstanceVariables ifTrue: [stompReader readInstVarsInto: self].
		stompReader readCollectionFieldsInto: self.
	].
	
	^self