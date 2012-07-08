*Stomp-Core-instance creation-helper
stompCreateMixedInstanceFrom: stompReader
	| type size indexFieldSize  |
	type := stompReader readType. 
	size := stompReader readSizeOfArrayIfMatched: type.
	size = 0 ifTrue: [^ self stompCreateInstance].
	size >= 1 ifTrue: [
		stompReader context fieldsInfo: (StompFieldsInfo pureIndexFieldsSized: size).
		^ self stompCreateInstance: size. 
	].

	"Otherwise, mixed fields"
	indexFieldSize := stompReader readUIntIfMatched: type.
	stompReader context fieldsInfo: (StompFieldsInfo mixedFields).
	^ self stompCreateInstance: indexFieldSize
