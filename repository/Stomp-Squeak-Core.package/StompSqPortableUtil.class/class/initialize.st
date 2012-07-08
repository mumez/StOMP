class initialization
initialize
	"StompSqPortableUtil initialize"
	| klsName |
	super initialize.
	klsName := ('squeak*' match: SystemVersion current version asLowercase) ifTrue: [#StompSqPortableUtil] ifFalse: [#StompPharoPortableUtil].
	Smalltalk at: klsName ifPresent: [:p | StompPortableUtil dialectSpecificClass: p].
	