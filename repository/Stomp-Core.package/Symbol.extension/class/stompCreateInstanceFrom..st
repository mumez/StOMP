*Stomp-Core-instance creation
stompCreateInstanceFrom: stompReader
	^ (super stompCreateInstanceFrom: stompReader) asSymbol