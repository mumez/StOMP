utilities
randomPhraseSized: size
	"self randomPhraseSized: 30"
	| str |
	str := ''.
	[str := str, ' ', self randomWord.
	str size < size] whileTrue.
	^str copyFrom: 1 to: size 