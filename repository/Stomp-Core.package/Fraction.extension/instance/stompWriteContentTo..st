*Stomp-Core-writing
stompWriteContentTo: stompWriter
	stompWriter writePrimitiveValues: (Array with: self numerator with: self denominator)