*Stomp-Core-instance creation
stompCreateInstanceFrom: stompReader
	^ StompPortableUtil default durationFromNanoseconds: stompReader readObject