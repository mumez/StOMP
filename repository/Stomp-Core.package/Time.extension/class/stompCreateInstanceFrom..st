*Stomp-Core-instance creation
stompCreateInstanceFrom: stompReader
	^self fromSeconds: stompReader readObject