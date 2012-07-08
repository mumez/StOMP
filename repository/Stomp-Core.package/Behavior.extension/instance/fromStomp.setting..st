*Stomp-Core-reading
fromStomp: bytes setting: aBlock
	| context reader |
	reader := StompReader new.
	context := reader context.
	aBlock value: context.
	^reader decode: bytes.