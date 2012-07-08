*Stomp-Core-writing
stompWriteContentTo: stompWriter
	| rectArray |
	rectArray := Array with: self origin x with: self origin y with: self corner x with: self corner y.
	stompWriter writePrimitiveValues: rectArray