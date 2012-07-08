*Stomp-Core-instance creation
stompCreateInstance: size
	^ [self new: size]
		on: Error
		do: [:ex | 
			| alterClass | 
			alterClass := StompNewFailed signal: self name.
			alterClass isNil
				ifTrue: [[self basicNew: size] on: Error do: [self stompCreateInstance]]
				ifFalse: [alterClass basicNew: size]]