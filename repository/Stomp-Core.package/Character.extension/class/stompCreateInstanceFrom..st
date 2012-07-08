*Stomp-Core-instance creation
stompCreateInstanceFrom: stompReader
	^ StompPortableUtil default characterFromUnicode: stompReader readObject