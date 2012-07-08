*Stomp-Squeak-Core-instance creation
stompCreateInstanceFrom: stompReader
	| array |
	array := stompReader readPrimitiveValues.
	^self newFromNumber:  (array at: 1) scale: (array at: 2)