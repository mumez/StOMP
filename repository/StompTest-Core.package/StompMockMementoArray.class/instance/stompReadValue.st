stomp-objectstream-reading
stompReadValue
	| inst |
	inst := StompMockCustomWriteObject new.
	inst name: (self at: 1).
	inst email: (self at: 2).
	^inst