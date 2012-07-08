*Stomp-Core-instance creation
stompCreateInstanceFrom: stompReader
	| cls |
	stompReader context clearFieldsInfo.
	cls := self.
	cls isBits ifTrue: [^ self stompCreateBitsInstanceFrom: stompReader].
	^ self stompCreateCollectionInstanceFrom: stompReader
	
		
	