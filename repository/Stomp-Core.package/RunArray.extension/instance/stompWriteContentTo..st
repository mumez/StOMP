*Stomp-Core-writing
stompWriteContentTo: stompWriter
	stompWriter writePrimitiveValues: (Array with: self runs with: self values)