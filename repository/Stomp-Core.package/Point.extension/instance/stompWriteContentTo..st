*Stomp-Core-writing
stompWriteContentTo: stompWriter
	| rectArray |
	rectArray := Array with: self x with: self y.
	stompWriter writePrimitiveValues: rectArray