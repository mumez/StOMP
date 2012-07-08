*Stomp-Core-instance creation
stompCreateInstance
	^[self new]
		on: Error
		do: [:ex | 
			| alterClass | 
			alterClass := StompNewFailed signal: self name.
			alterClass isNil
				ifTrue: [self basicNew]
				ifFalse: [alterClass basicNew]]