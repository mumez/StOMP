*Stomp-Core-testing
stompLoadContentsOnCreation
	"override"
	self isBits ifTrue: [^true]. 
	^ self class includesSelector: #stompCreateInstanceFrom: "Typically"
	