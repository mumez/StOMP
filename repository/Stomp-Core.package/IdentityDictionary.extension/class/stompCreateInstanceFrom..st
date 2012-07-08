*Stomp-Core-instance creation
stompCreateInstanceFrom: stompReader
	| dic inst |
	dic := stompReader readObject.
	inst := self new.
	dic keysAndValuesDo: [:k :v | inst at: k put: v].	
	^ inst