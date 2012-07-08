*Stomp-Core-instance creation
stompCreateInstanceFrom: stompReader
	| intervalArray |
	intervalArray := stompReader readPrimitiveValues.
	^self from: (intervalArray at: 1) to: (intervalArray at: 2) by: (intervalArray at: 3)