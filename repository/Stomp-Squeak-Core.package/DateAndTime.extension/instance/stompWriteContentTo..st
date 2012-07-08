*Stomp-Squeak-Core-writing
stompWriteContentTo: stompWriter
	stompWriter writeObject: (StompPortableUtil default nanosecondsFromDateAndTime: self)