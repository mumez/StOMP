*Stomp-Core-writing
stompWriteContentTo: stompWriter
	stompWriter writeObject: (StompPortableUtil default nanosecondsFromDuration: self)