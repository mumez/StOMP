*Stomp-Squeak-Core-instance creation
stompCreateInstanceFrom: stompReader
	^ StompPortableUtil default timestampFromNanoseconds: stompReader readObject