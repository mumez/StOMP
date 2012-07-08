*Stomp-Squeak-Core-writing
stompWriteContentTo: stompWriter
	| rgbArray |
	rgbArray := Array with: self red  with: self green  with: self blue .
	stompWriter writePrimitiveValues: rgbArray.
	
	