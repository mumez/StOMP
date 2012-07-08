*Stomp-Core-instance creation
stompCreateInstanceFrom: stompReader
	| rectArray |
	rectArray := stompReader readPrimitiveValues.
	^ (rectArray at: 1) @ (rectArray at: 2) corner: (rectArray at: 3) @ (rectArray at: 4)