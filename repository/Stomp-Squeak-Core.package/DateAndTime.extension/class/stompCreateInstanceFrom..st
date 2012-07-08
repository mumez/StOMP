*Stomp-Squeak-Core-instance creation
stompCreateInstanceFrom: stompReader
	^ StompPortableUtil default dateAndTimeFromNanoseconds: stompReader readObject