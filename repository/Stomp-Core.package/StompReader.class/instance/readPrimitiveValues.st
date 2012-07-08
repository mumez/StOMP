reading-custom
readPrimitiveValues
	"Assuming <= 15 fields"
	| inst size |
	size := self readStream next bitAnd: 16rF.
	inst := self createArray: size.
	size = 0 ifTrue: [^ inst].
	^ super readArraySized: size