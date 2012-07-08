*Stomp-Squeak-Core-instance creation
stompCreateInstanceFrom: stompReader
	| rgbArray |
	rgbArray := stompReader readPrimitiveValues.
	^ StompPortableUtil default colorFromRgbArray: rgbArray
	