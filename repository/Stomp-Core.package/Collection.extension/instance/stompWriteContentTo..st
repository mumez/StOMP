*Stomp-Core-writing
stompWriteContentTo: stompWriter 
	"Override as you wish"
	"Provides basic dispatch to stompWriter"
	| cls |
	cls := self class.
	cls isBits ifTrue: [^ stompWriter writeBitsOf: self].
	^ stompWriter writeMixedFieldsOf: self