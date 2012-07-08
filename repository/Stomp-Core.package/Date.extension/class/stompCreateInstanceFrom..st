*Stomp-Core-instance creation
stompCreateInstanceFrom: stompReader
	^ StompPortableUtil default dateFromSeconds: stompReader readObject