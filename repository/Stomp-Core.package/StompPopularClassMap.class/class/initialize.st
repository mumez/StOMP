class initialization
initialize
	"self initialize"
	self class = StompPopularClassMap ifTrue: [^self initializeAll].
	default := nil
	