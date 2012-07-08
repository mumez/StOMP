*Stomp-Core-writing
stompWriteContentTo: stompWriter
	stompWriter writeObject: (StompPortableUtil default unicodeFromCharacter: self)