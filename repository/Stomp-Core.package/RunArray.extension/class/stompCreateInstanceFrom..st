*Stomp-Core-instance creation
stompCreateInstanceFrom: stompReader
	| fraArray |
	fraArray := stompReader readPrimitiveValues.
	^self runs: (fraArray at: 1) values: (fraArray at: 2)