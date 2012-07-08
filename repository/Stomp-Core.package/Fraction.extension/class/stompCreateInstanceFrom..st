*Stomp-Core-instance creation
stompCreateInstanceFrom: stompReader
	| fraArray |
	fraArray := stompReader readPrimitiveValues.
	^self numerator: (fraArray at: 1) denominator: (fraArray at: 2)